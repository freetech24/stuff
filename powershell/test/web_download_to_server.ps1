# Переменные

# 7-zip
$url1 = 'https://www.7-zip.org/a/7z1900-x64.exe'

# nextcloud desktop client
$url2 = 'https://download.nextcloud.com/desktop/releases/Windows/latest'


# Временная папка на Сервере
$tmpsrv = '\\fs-01\fs_deploy\soft'


# Скрипт

Invoke-WebRequest $url1 -OutFile $($tmpsrv+'\7zip.exe' ) -UseBasicParsing
Invoke-WebRequest $url2 -OutFile $($tmpsrv+'\nextcloud.exe' ) -UseBasicParsing
       
Write-Output $('Софт был скачан в '+$tmpsrv)
    