# DigBat

# variáveis de acesso
$basePath = "$env:USERPROFILE\battery_report"
$logPath = "$basePath\logs.txt"
$dataPath = "$basePath\battery-data.csv"

# Caso diretório não exista
if (!(Test-Path $basePath)) {
  New-Item -ItemType Directory -Path $basePath | Out-Null
}

# Pergunta ao usuário
$verDiagnostico = Read-Host "Deseja rodar o diagnóstico completo da bateria (s/n)? "

if ($verDiagnostico -notin @("s", "S", "sim", "Sim")) {
  Write-Host "Operação cancelada."
  exit
}

# Momento da execução
