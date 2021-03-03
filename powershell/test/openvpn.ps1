$computers = Get-Content \\fs-01\fs_deploy\cache\computers.txt


 
foreach($computer in $computers) 
  {
  Invoke-Command -ComputerName $computer -ScriptBlock {choco install openvpn -yes}
  Write-Host $('Политика на '+$computer+' обновлена')
 }