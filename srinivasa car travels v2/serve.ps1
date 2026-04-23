Set-Location -LiteralPath $PSScriptRoot

if (Get-Command node -ErrorAction SilentlyContinue) {
  node .\server.js
} elseif (Get-Command py -ErrorAction SilentlyContinue) {
  py -m http.server 5531 --bind 0.0.0.0
} else {
  Write-Error "Neither Node.js nor Python launcher (py) is available in PATH."
  exit 1
}
