#!/bin/sh
# Wraps src/mochi.html in a full HTML document so it can be opened directly in a phone browser.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover, user-scalable=no">\n'
  printf '<meta name="theme-color" content="#2a2540">\n<meta name="apple-mobile-web-app-capable" content="yes">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}[hidden]{display:none!important}</style>\n'
  cat src/mochi.html
  printf '</html>\n'
} > index.html
echo "built index.html"
