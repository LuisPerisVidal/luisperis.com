#!/usr/bin/env bash
# Crea un borrador de post en _posts/ a partir de un título.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
POSTS_DIR="$ROOT/_posts"

if [[ ! -d "$POSTS_DIR" ]]; then
  echo "Error: no existe el directorio _posts/ en $ROOT" >&2
  exit 1
fi

# --- Título ---
if [[ $# -gt 0 ]]; then
  TITLE="$*"
else
  printf "Título del post: "
  IFS= read -r TITLE
fi

TITLE="$(printf '%s' "$TITLE" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"

if [[ -z "$TITLE" ]]; then
  echo "Error: el título no puede estar vacío." >&2
  exit 1
fi

# --- Descripción (opcional) ---
printf "Descripción (opcional, Enter para omitir): "
IFS= read -r DESCRIPTION

# --- Categoría (opcional) ---
CATEGORIES=(
  "Programación"
  "Rendimiento y Aplicaciones"
  "Emprendedores"
  "Marketing Online"
  "Inbound Marketing"
  "Negocios Online"
  "Podcast"
  "Sobre mi"
  "Wailux"
  "Otros temas"
)

echo ""
echo "Categoría (opcional):"
echo "  0) (sin categoría)"
i=1
for cat in "${CATEGORIES[@]}"; do
  printf "  %d) %s\n" "$i" "$cat"
  ((i++))
done
printf "Elige [0-%d] (Enter = 0): " "$((${#CATEGORIES[@]}))"
IFS= read -r CAT_CHOICE
CAT_CHOICE="${CAT_CHOICE:-0}"

CATEGORY=""
if [[ "$CAT_CHOICE" =~ ^[0-9]+$ ]] && (( CAT_CHOICE >= 1 && CAT_CHOICE <= ${#CATEGORIES[@]} )); then
  CATEGORY="${CATEGORIES[$((CAT_CHOICE - 1))]}"
fi

# --- Slug a partir del título ---
slugify() {
  # Normaliza acentos (NFKD) y genera un slug URL-safe.
  # Preferimos Python; si no está, usamos sed con mapa español.
  if command -v python3 >/dev/null 2>&1; then
    printf '%s' "$1" | python3 -c '
import re, sys, unicodedata
s = sys.stdin.read()
s = unicodedata.normalize("NFKD", s)
s = "".join(c for c in s if not unicodedata.combining(c))
s = s.lower()
s = re.sub(r"[^a-z0-9]+", "-", s).strip("-")
print(s, end="")
'
  else
    printf '%s' "$1" \
      | sed 'y/áàäâÁÀÄÂéèëêÉÈËÊíìïîÍÌÏÎóòöôÓÒÖÔúùüûÚÙÜÛñÑçÇ/aaaaAAAAeeeeEEEEiiiiIIIIooooOOOOuuuuUUUUnNcC/' \
      | tr '[:upper:]' '[:lower:]' \
      | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//; s/-+/-/g'
  fi
}

SLUG="$(slugify "$TITLE")"

if [[ -z "$SLUG" ]]; then
  echo "Error: no se pudo generar un slug a partir del título." >&2
  exit 1
fi

# --- Fecha y fichero ---
DATE_FILE="$(date +%Y-%m-%d)"
DATE_FRONT="$(date +"%Y-%m-%d %H:%M:%S %z")"
# Normaliza offset (+0100) por si date usa +01:00 en algún sistema
DATE_FRONT="$(printf '%s' "$DATE_FRONT" | sed -E 's/([+-][0-9]{2}):([0-9]{2})$/\1\2/')"

FILENAME="${DATE_FILE}-${SLUG}.md"
FILEPATH="$POSTS_DIR/$FILENAME"

if [[ -e "$FILEPATH" ]]; then
  echo "Error: ya existe $FILENAME" >&2
  exit 1
fi

# Escapa comillas dobles del YAML
yaml_escape() {
  printf '%s' "$1" | sed 's/"/\\"/g'
}

TITLE_ESC="$(yaml_escape "$TITLE")"
DESC_ESC="$(yaml_escape "$DESCRIPTION")"

{
  cat <<EOF
---
layout: post
title: "${TITLE_ESC}"
date: ${DATE_FRONT}
permalink: /${SLUG}/
description: "${DESC_ESC}"
EOF

  if [[ -n "$CATEGORY" ]]; then
    printf 'categories: ["%s"]\n' "$(yaml_escape "$CATEGORY")"
  else
    printf 'categories: []\n'
  fi

  cat <<'EOF'
---

Escribe aquí el contenido del post.

EOF
} > "$FILEPATH"

echo ""
echo "Post creado:"
echo "  $FILEPATH"
echo ""
echo "Abre el fichero y empieza a escribir."

# Abre el editor si $EDITOR está definido y la salida es interactiva
if [[ -n "${EDITOR:-}" && -t 0 && -t 1 ]]; then
  printf "¿Abrir con \$EDITOR (%s)? [s/N]: " "$EDITOR"
  IFS= read -r OPEN
  case "$OPEN" in
    s|S|y|Y|si|sí|Si|Sí) exec "$EDITOR" "$FILEPATH" ;;
  esac
fi
