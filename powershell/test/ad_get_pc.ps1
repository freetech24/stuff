# Скрипт по выгрузки имени компрьютеров AD в текстовый файл

Get-ADComputer -SearchBase 'CN=Computers,DC=corp,DC=call-service,DC=ru' -Filter 'Name -like "WS-*"' -Properties * | FT Name > C:\oa\computers.txt
(Get-Content C:\oa\computers.txt) | where {$_ -like "WS-*" } | Out-File C:\oa\computers.txt