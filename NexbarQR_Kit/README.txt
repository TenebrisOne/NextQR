NEXBARQR — KIT DE MARCA v1.0
Sistema noir + terminal · Base: DarkFrame Brand Kit v1.0
Símbolo propio de NexbarQR: visor de escaneo (corchetes tipo QR) + barras de
código de barras + línea de escaneo cherry. Sin relación con el hexágono-cubo
de DarkFrame: comparten sistema de color y tipografía, no el símbolo.

════════════════════════════════════════════════════════════

1) ESTRUCTURA Y USO DE CADA ARCHIVO

01_Logo/PNG/  (fondo transparente, listos para usar)
  · nexbarqr-isotipo-color.png (2048×2048)
      Símbolo solo. Avatar, icono de app, sellos, marca de agua, UI.
  · nexbarqr-imagotipo-horizontal-color.png (3000 px ancho)
      Versión por defecto (90% de los casos): navbar, splash, portadas,
      firmas. SOLO sobre fondos oscuros (noir o grafito oscuro).
  · nexbarqr-lockup-vertical-color.png (2048 px alto)
      Formatos altos o centrados: historias, etiquetas, merch.
  · *-mono-negro.png   → fondos claros: papel, PDF, web clara.
  · *-mono-marfil.png  → una sola tinta clara: bordado, grabado, sello.

01_Logo/SVG/  (puro trazado, sin fuentes externas, editables en Figma/Illustrator)
  · nexbarqr-isotipo-flat.svg · -mono-negro.svg · -mono-marfil.svg
  · nexbarqr-imagotipo-horizontal-flat.svg · nexbarqr-lockup-vertical-flat.svg
  Escalado infinito, impresión, favicon maestro. Para recolorear basta
  cambiar los fill del SVG.

02_Digital/
  · og-image-1200x630.png   → imagen og:image / twitter:image
  · avatar-2048.png         → foto de perfil (GitHub, X, Instagram…)
  · Favicon/
      app-icon-512.png · favicon-192.png · apple-touch-icon-180.png
      favicon-48.png · favicon-32.png · favicon-16.png · favicon.ico
      (el icono usa la variante optimizada del símbolo a mayor escala;
       16 px usa la variante nano: visor + línea de escaneo)

preview-kit.png → hoja de contacto con todas las versiones.

════════════════════════════════════════════════════════════

2) COLORES (sistema DarkFrame)

  NOIR    #0A0A0B   fondos y escenario (70% de la pieza)
  MARFIL  #EDEBDD   texto y trazo del logo (25%)
  CHERRY  #D01B23   acento: línea de escaneo + "QR" del nombre (5%)
  ---
  Cherry-bright #FF2D4D → solo texto cherry pequeño / estados interactivos
  Grafito oscuro #1E2024 → paneles · Maroon #630000 → líneas decorativas

  Nota del kit DarkFrame (2.8): adoptar #D01B23 como cherry de marca en
  todas las piezas nuevas; reservar #D90429 / #FF2D4D para estados
  interactivos digitales.

════════════════════════════════════════════════════════════

3) TIPOGRAFÍA

  Wordmark  Montserrat Bold (mayúsculas, tracking 6%)
  Subline   Montserrat Medium, tracking justificado al ancho del nombre
  Los SVG ya llevan el texto convertido a trazados: no requieren fuentes.
  Para piezas nuevas de la app: Space Grotesk (títulos), Inter (texto),
  JetBrains Mono (tags/datos) — todas en Google Fonts, licencia SIL OFL.

════════════════════════════════════════════════════════════

4) METAS OG — pegar en el <head> de index.html
   (sube og-image-1200x630.png y los favicons a la raíz del sitio)

  <meta property="og:title" content="NexbarQR — Crea códigos QR y de barras gratis">
  <meta property="og:description" content="Generador gratuito de códigos QR y de barras. 100% local en tu navegador, sin registro.">
  <meta property="og:image" content="https://nexbarqr.web.app/og-image-1200x630.png">
  <meta property="og:image:width" content="1200">
  <meta property="og:image:height" content="630">
  <meta property="og:url" content="https://nexbarqr.web.app/">
  <meta property="og:type" content="website">
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:image" content="https://nexbarqr.web.app/og-image-1200x630.png">
  <link rel="icon" href="/favicon.ico" sizes="48x48">
  <link rel="icon" href="/favicon-192.png" type="image/png" sizes="192x192">
  <link rel="apple-touch-icon" href="/apple-touch-icon-180.png">

════════════════════════════════════════════════════════════

5) REGLAS RÁPIDAS DEL LOGO

  ✓ Área de seguridad = X (la altura del isotipo) a cada lado.
  ✓ Color solo sobre noir; mono negro sobre fondos claros.
  ✓ Debajo de 32 px usar los favicons del kit, no el isotipo completo.
  ✗ No estirar, rotar, recomponer ni recrear el símbolo.
  ✗ No cambiar colores ni añadir sombras o efectos al logo.
  ✗ Cherry nunca como color dominante (máx. 5% del área de la pieza).

NexbarQR — Crea códigos QR y de barras gratis · https://nexbarqr.web.app
by DarkFrame Technologies · Bogotá D.C. · 2026
