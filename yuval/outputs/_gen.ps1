$ErrorActionPreference = "Stop"
$root = "C:/Users/Gal/Desktop/Claude/the-five-agents"

# Load .env
Get-Content "$root/.env" | ForEach-Object {
  $line = $_.Trim()
  if ($line -and -not $line.StartsWith("#") -and $line.Contains("=")) {
    $i = $line.IndexOf("=")
    $k = $line.Substring(0, $i).Trim()
    $v = $line.Substring($i + 1).Trim()
    $v = $v.Trim('"').Trim("'")
    Set-Item -Path "Env:$k" -Value $v
  }
}
if (-not $env:OPENAI_API_KEY) { throw "KEY_MISSING" }

$prompt = [string](Get-Content "$root/yuval/outputs/2026-06-02-puss-in-boots.txt" -Raw)

$payload = [ordered]@{
  model         = "gpt-image-2"
  prompt        = $prompt
  size          = "1024x1024"
  quality       = "high"
  output_format = "png"
}
$body = ConvertTo-Json -InputObject $payload -Depth 5 -Compress

$headers = @{
  Authorization  = "Bearer $($env:OPENAI_API_KEY)"
  "Content-Type" = "application/json"
}

try {
  $resp = Invoke-RestMethod -Uri "https://api.openai.com/v1/images/generations" -Method Post -Headers $headers -Body ([System.Text.Encoding]::UTF8.GetBytes($body))
}
catch {
  Write-Output ("STATUS: " + $_.Exception.Response.StatusCode.value__)
  if ($_.ErrorDetails -and $_.ErrorDetails.Message) {
    Write-Output ("DETAILS: " + $_.ErrorDetails.Message)
  } else {
    try {
      $sr = New-Object System.IO.StreamReader($_.Exception.Response.GetResponseStream())
      Write-Output ("BODY: " + $sr.ReadToEnd())
    } catch { Write-Output ("ERR: " + $_.Exception.Message) }
  }
  exit 1
}

$b64 = $resp.data[0].b64_json
$out = "$root/yuval/outputs/2026-06-02-puss-in-boots.png"
[IO.File]::WriteAllBytes($out, [Convert]::FromBase64String($b64))
Write-Output "DONE"
