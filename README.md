# Mente Serena

Primera version web publica, gratuita y responsive para Mente Serena SAS.

## Alcance

La web presenta a Mente Serena como una marca de recalibracion mental no clinica para adultos de alta exigencia. La puerta de entrada publica es una Revisión Privada orientada a comprender que puede estar afectando la recuperacion, la claridad o la direccion mental, y a determinar si corresponde una ruta no clinica, una valoracion clinica externa o ningun proceso.

## Principios de comunicacion

- No presentar catalogo de servicios.
- No permitir que el visitante elija directamente entre rutas.
- No vender tratamientos medicos, psicologicos o psiquiatricos.
- No prometer resultados, curacion, diagnostico, rendimiento ni mejoria clinica.
- Mantener un unico llamado de contacto visible: Contactar por WhatsApp.
- Advertir que WhatsApp no debe usarse para enviar informacion clinica sensible antes de recibir orientacion.

## Estructura

- `index.html`: pagina principal.
- `privacy.html`: politica de privacidad y tratamiento de datos.
- `legal.html`: aviso legal, terminos de uso y limites no clinicos.
- `assets/`: logo, isotipo y textura.
- `css/styles.css`: estilos responsivos.
- `js/main.js`: comportamiento minimo para navegacion movil.

## Publicacion gratuita

El sitio esta preparado para GitHub Pages. Al publicar el repositorio como publico, GitHub Pages puede servir la web desde la rama `main`.

## Seguridad

Esta version es estatica y no usa base de datos, formularios, panel administrativo, pagos, API propia ni cookies de analitica. Antes de cada publicacion se debe ejecutar `scripts/check-sensitive.ps1` para detectar patrones comunes de secretos o archivos internos.

Controles incluidos:

- Politica minima de seguridad en `SECURITY.md`.
- `.gitignore` para llaves, entornos, documentos clinicos y archivos internos.
- Metas de seguridad en HTML: CSP basica, bloqueo de formularios y politica de referrer.
- Enlaces externos con `rel="noopener noreferrer"`.
- GitHub Pages con HTTPS.

Controles externos recomendados:

- 2FA obligatorio en la cuenta de GitHub.
- Alertas de seguridad y Dependabot/security alerts activadas en GitHub.
- Proteccion de rama `main`.
- Cloudflare o Netlify si se requieren headers HTTP avanzados como HSTS, `X-Frame-Options` o una CSP servida por header.

## Responsable

Mente Serena SAS  
Colombia  
Correo: restauratusueno@gmail.com  
Telefono: 3128949710  
Direccion: Cra 49C # 80 - 125
