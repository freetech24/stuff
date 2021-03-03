$computers = Get-Content \\fs-01\fs_deploy\cache\computers.txt


 
foreach($computer in $computers) 
  {
    #Invoke-Command -ComputerName $computer -ScriptBlock {cmd /c 'C:\deploy\thunderbird.exe /S'}
    #Invoke-Command -ComputerName $computer -ScriptBlock {cmd /c 'C:\deploy\7zip.exe /S'}
    Invoke-Command -ComputerName $computer -ScriptBlock {choco install nextcloud-client --pre }
    
 }
 