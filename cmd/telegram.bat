\\share\telegram.exe /DIR="C:\Program Files\Telegram Desktop" /SP- /VERYSILENT
mklink "C:\Users\Public\Desktop\telegram.lnk" "C:\Program Files\Telegram Desktop\Telegram.exe"
mklink "C:\Program Files\Telegram Desktop\Telegram.exe" "C:\Users\Public\Desktop\telegram.lnk"
