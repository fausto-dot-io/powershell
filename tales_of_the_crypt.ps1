# encrypt and decrypt password with PowerShell 7+
# save encryption to a file and decrypt back to plaintext

$pwd = Read-Host -AsSecureString
$encrypted_pwd_w_key = ConvertFrom-SecureString -SecureString $pwd -Key (1..16)
$encrypted_pwd_w_key | Set-Content -Path "C:\Blog\encrypted_pwd_w_key.txt"
$secure_string_encrypted_pwd_key = Get-Content -Path "C:\Blog\encrypted_pwd_w_key.txt" | ConvertTo-SecureString -Key (1..16)
ConvertFrom-SecureString -SecureString $secure_string_encrypted_pwd_key -AsPlainText
