function Unpin-App([string]$appname) {
  ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() |
      Where-Object{$_.Name -eq $appname}).Verbs() | Where-Object{$_.Name.replace('&','') -match 'Unpin from taskbar'} | ForEach-Object{$_.DoIt()}
}

Unpin-App("Microsoft Edge")
Unpin-App("Microsoft Store")
Unpin-App("Mail")

