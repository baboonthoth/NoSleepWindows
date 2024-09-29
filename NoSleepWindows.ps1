Clear-Host
$Time = [System.Diagnostics.Stopwatch]::StartNew()
$wshell = New-Object -ComObject wscript.shell;

$etime =0

while ($true) {

    $CurrentTime = $Time.Elapsed

    Write-Host $([string]::Format("`rTime: {0:d2}:{1:d2}:{2:d2}"
                                    , $CurrentTime.hours
                                    , $CurrentTime.minutes
                                    , $CurrentTime.seconds)) -NoNewline
    
    $etime ++
    Start-Sleep -Seconds 1

    if ( $etime%300 -eq 0 )
    {
        $etime = 0
        $wshell.SendKeys('{SCROLLLOCK}')
        $wshell.SendKeys('{SCROLLLOCK}')
    }    
}