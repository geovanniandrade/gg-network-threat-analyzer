# GG Network Threat Analyzer - TCP Snapshot Collector v0.1
# Read-only. Run only on endpoints you own or are authorized to assess.
param([string]$OutputPath = (Join-Path ([Environment]::GetFolderPath('Desktop')) 'gg-network-connections.csv'))
$ErrorActionPreference = 'Stop'
try {
  $connections = @(Get-NetTCPConnection -ErrorAction Stop | Where-Object {
    $_.State -eq 'Established' -and $_.RemoteAddress -notin @('0.0.0.0','::') -and
    $_.RemoteAddress -notmatch '^(127\.|::1$)'
  })
  $rows = @($connections | ForEach-Object {
    [pscustomobject]@{
      src_ip = $_.LocalAddress
      dst_ip = $_.RemoteAddress
      dst_port = $_.RemotePort
      proto = 'TCP'
    }
  })
  if ($rows.Count -eq 0) {
    'src_ip,dst_ip,dst_port,proto' | Set-Content -LiteralPath $OutputPath -Encoding UTF8
  } else {
    $rows | Export-Csv -LiteralPath $OutputPath -NoTypeInformation -Encoding UTF8
  }
  Write-Host "CSV criado em: $OutputPath"
  Write-Host 'Coleta pontual das conexoes TCP estabelecidas neste computador; nao e historico de rede nem captura PCAP.'
  Write-Host 'Revise e proteja IPs internos antes de compartilhar.'
} catch {
  Write-Error "Falha na coleta: $($_.Exception.Message)"
  exit 1
}
