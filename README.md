# NexbarQR

NexbarQR es una herramienta web estática para generar y descargar códigos QR y códigos de barras desde el navegador. El proyecto conserva la identidad visual DarkFrame: negro, marfil y rojo cherry.

**Producción:** https://nexbarqr.web.app

## Stack

- HTML, CSS y JavaScript estático.
- [QRCode.js](https://github.com/davidshimjs/qrcodejs) para códigos QR.
- [JsBarcode](https://github.com/lindell/JsBarcode) para códigos de barras.
- Firebase Hosting en el plan Spark (gratuito).
- Sistema visual DarkFrame en negro, marfil y rojo cherry.

## Estructura del proyecto

```text
scripts/
  parts/                 Fragmentos fuente de la aplicación
  assemble.sh            Ensambla los fragmentos
  deploy.sh              Ensambla y despliega a Firebase Hosting
public/
  index.html              Aplicación ensamblada
  404.html                Página de error
  robots.txt              Reglas de rastreo
  sitemap.xml             Sitemap de producción
  site.webmanifest        Metadatos de instalación e iconos
firebase.json             Configuración de Firebase Hosting
.firebaserc               Proyecto y target de Firebase
.github/workflows/        Workflows de GitHub, cuando estén configurados
```

Los archivos de `scripts/parts/` son la fuente de la aplicación. No edites `public/index.html` directamente: se regenera con el comando de ensamblado.

## Instalación y ensamblado

```bash
npm install
npm run assemble
```

El resultado se genera en `public/index.html`.

## Firebase

Proyecto y sitio de Hosting:

```text
Proyecto: nexbarqr
Sitio: nexbarqr
Dominio: https://nexbarqr.web.app
Plan: Spark
```

Selecciona el proyecto y despliega el sitio:

```bash
firebase use nexbarqr
npm run assemble
firebase deploy --only hosting:prod
```

También puedes ejecutar el ensamblado y el despliegue con:

```bash
npm run deploy
```

## Despliegue automático

La integración configurada desde Firebase Console publica cada `git push` a la rama `main` con estos valores:

- Rama: `main`.
- Comando de build: `npm run assemble`.
- Directorio de salida: `public`.
- Proyecto Firebase: `nexbarqr`.

La configuración de Hosting conserva los metadatos SEO, los iconos, el sitemap, `robots.txt`, la página 404 y los encabezados de seguridad incluidos en `public/` y `firebase.json`.
