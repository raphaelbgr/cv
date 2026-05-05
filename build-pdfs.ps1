# Regenerates cv.pdf for each variant from its index.html via headless Chrome.
# Run from the cv/ root: .\build-pdfs.ps1
#
# Requires: Google Chrome installed at the standard location.
# Internet access is needed at build time to fetch the Google Fonts
# referenced in each index.html (Fraunces, IBM Plex Sans, JetBrains Mono).

$ErrorActionPreference = 'Stop'

$candidates = @(
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
  "$env:LOCALAPPDATA\Google\Chrome\Application\chrome.exe"
)
$chrome = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $chrome) {
  throw "Google Chrome not found. Install it or edit this script with your browser's path."
}

$here = $PSScriptRoot
$variants = @('default', 'streaming', 'faang', 'architect')

foreach ($v in $variants) {
  $html = Join-Path $here "$v\index.html"
  $pdf  = Join-Path $here "$v\cv.pdf"
  if (-not (Test-Path $html)) {
    Write-Warning "skipped $v -- $html not found"
    continue
  }
  $url = 'file:///' + ($html -replace '\\', '/')
  Write-Host "Building $v/cv.pdf..." -ForegroundColor Cyan
  & $chrome `
    --headless=new `
    --disable-gpu `
    --no-pdf-header-footer `
    --virtual-time-budget=15000 `
    --run-all-compositor-stages-before-draw `
    "--print-to-pdf=$pdf" `
    $url 2>&1 | Out-Null
  $size = (Get-Item $pdf).Length
  Write-Host ("  -> {0}  ({1:N0} bytes)" -f $pdf, $size) -ForegroundColor Green
}

Write-Host ""
Write-Host "Done. Commit the regenerated cv.pdf files." -ForegroundColor Yellow
