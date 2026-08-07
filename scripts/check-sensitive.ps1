$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$patterns = @(
  "api[_-]?key",
  "secret",
  "token",
  "password",
  "private[_-]?key",
  "BEGIN (RSA|OPENSSH|EC|DSA)? ?PRIVATE KEY",
  "historia clinica",
  "historia clínica",
  "paciente",
  "diagnostico",
  "diagnóstico",
  "tratamiento prescrito"
)

$excludedDirectories = @(
  "\.git\",
  "\scripts\"
)

$files = Get-ChildItem -LiteralPath $root -Recurse -File -Force |
  Where-Object {
    $path = $_.FullName
    $name = $_.Name
    -not ($excludedDirectories | Where-Object { $path -like "*$_*" }) -and
    $name -notin @(".gitignore", "README.md", "SECURITY.md")
  }

$findings = foreach ($file in $files) {
  Select-String -LiteralPath $file.FullName -Pattern $patterns -CaseSensitive:$false -ErrorAction SilentlyContinue |
    Where-Object {
      $line = $_.Line
      -not ($line -match "no diagnostica|no prescribe|no presta servicios|no es una clinica|no es una clínica|no reemplaza|no atiende urgencias|no debe contener|no publiques|No publiques|diagnostica enfermedades|prescribe tratamientos")
    } |
    Select-Object @{Name="Path";Expression={$file.FullName}}, LineNumber, Line
}

if ($findings) {
  Write-Host "Potential sensitive content found:" -ForegroundColor Red
  $findings | Format-Table -AutoSize
  exit 1
}

Write-Host "Sensitive-content check passed." -ForegroundColor Green
