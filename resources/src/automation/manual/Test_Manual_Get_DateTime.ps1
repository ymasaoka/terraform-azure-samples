<#
.SYNOPSIS
    This runbook retrieves the current date and time.
.DESCRIPTION
    This runbook demonstrates how to get the current date and time using PowerShell in an Azure Automation environment.
#>

$sampleString = Get-AutomationVariable -Name "Sample_Variable_String"
Write-Output "Sample String: $sampleString"

$dateTimeNow = Get-Date
Write-Output "Current DateTime: $dateTimeNow"
Write-Output "Current DateTime (UTC): $($dateTimeNow.ToUniversalTime())"
