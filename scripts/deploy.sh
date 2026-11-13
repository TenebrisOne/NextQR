#!/usr/bin/env bash
# Despliega NexbarQR a Firebase Hosting.
#   Uso:  bash scripts/deploy.sh           # ensambla y despliega a producción
#         bash scripts/deploy.sh --preview # canal de vista previa (7 días)
#
# Requisito previo (una sola vez):  firebase login
# Si el CLI no está instalado:       npm install -g firebase-tools
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$DIR"

if ! command -v firebase >/dev/null 2>&1; then
  echo "→ firebase CLI no encontrado en el PATH; uso el local (npx)."
  FIREBASE="npx firebase"
else
  FIREBASE="firebase"
fi

bash scripts/assemble.sh

if [ "${1:-}" = "--preview" ]; then
  echo "→ Desplegando canal de vista previa (sitio: nexbarqr)…"
  $FIREBASE hosting:channel:deploy preview --expires 7d --only prod
else
  echo "→ Desplegando a producción (sitio: nexbarqr)…"
  $FIREBASE deploy --only hosting:prod
fi

echo "✓ Listo. Revisa tu URL en la salida anterior o en:"
echo "  https://nexbarqr.web.app"
