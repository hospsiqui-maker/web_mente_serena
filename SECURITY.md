# Security Policy

## Alcance

Este repositorio contiene una web estatica publica de Mente Serena SAS. No debe contener llaves API, tokens, datos privados, historias clinicas, documentos de pacientes, protocolos propietarios completos ni informacion interna sensible.

## Reporte de vulnerabilidades

Si detectas una vulnerabilidad o exposicion accidental de informacion, reportala al responsable:

- Correo: restauratusueno@gmail.com
- Asunto sugerido: Seguridad web Mente Serena

No publiques detalles tecnicos de una vulnerabilidad antes de que Mente Serena SAS pueda revisarla.

## Buenas practicas de publicacion

Antes de cada commit o push:

1. Ejecutar `scripts/check-sensitive.ps1`.
2. Confirmar que no hay archivos privados, clinicos o internos en `git status`.
3. Revisar que no existan enlaces `mailto:` o `tel:` promocionales.
4. Mantener el unico contacto visible como WhatsApp.
5. Verificar que GitHub Pages conserve HTTPS activo.

## Alcance no clinico

La web no es una clinica, no presta servicios medicos, psicologicos o psiquiatricos, no atiende urgencias, no diagnostica y no prescribe tratamientos.

