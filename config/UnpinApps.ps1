function Remove-AppPin([string]$appname) {
  ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() |
      Where-Object{$_.Name -eq $appname}).Verbs() | Where-Object{$_.Name.replace('&','') -match 'Unpin from taskbar'} | ForEach-Object{$_.DoIt()}
}

Remove-AppPin("Microsoft Edge")
Remove-AppPin("Microsoft Store")
Remove-AppPin("Mail")
