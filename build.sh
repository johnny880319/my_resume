#!/usr/bin/env bash
# Compiles every variant under variants/*/main.tex into build/<variant>.pdf
set -euo pipefail
cd "$(dirname "$0")"

# The variant whose PDF gets copied to ./resume.pdf (the one linked from README).
DEFAULT_VARIANT="genai"

mkdir -p build

for variant_dir in variants/*/; do
  variant="$(basename "$variant_dir")"
  echo "==> Building ${variant}"
  (
    cd "$variant_dir"
    latexmk -pdfxe -interaction=nonstopmode -file-line-error \
      -outdir="../../build/${variant}" main.tex
  )
  cp "build/${variant}/main.pdf" "build/${variant}.pdf"
done

cp "build/${DEFAULT_VARIANT}.pdf" resume.pdf
echo "Synced resume.pdf from build/${DEFAULT_VARIANT}.pdf"

echo "Done. PDFs available at build/<variant>.pdf"
