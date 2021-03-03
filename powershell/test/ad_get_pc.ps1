# Скрипт по выгрузки имени компрьютеров AD в текстовый файл

Get-ADComputer -SearchBase 'CN=Computers,DC=corp,DC=service,DC=com' -Filter 'Name -like "WS-*"' -Properties * | FT Name > C:\oa\computers.txt
<<<<<<< HEAD
(Get-Content C:\oa\computers.txt) | where {$_ -like "WS-*" } | Out-File C:\oa\computers.txt
=======
(Get-Content C:\oa\computers.txt) | where {$_ -like "WS-*" } | Out-File C:\oa\computers.txt
>>>>>>> 072833dd4c4b4cc7a1f20e8f8d47756e6088ad98
