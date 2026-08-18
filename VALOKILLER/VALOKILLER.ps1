$targetProcess = "VALORANT"

while ($true) {
	$proc = Get-Process -Name $targetProcess -ErrorAction SilentlyCountinue
	if ($proc) {
		Stop-Process -Name $targetProcess -Force -ErrorAction SilentlyCountinue
		Write-Host "долбоеб, адекватные люди в $targetProcess не играют" -ForegroundColor Red
	}
	Start-Sleep -Milliseconds 500
}