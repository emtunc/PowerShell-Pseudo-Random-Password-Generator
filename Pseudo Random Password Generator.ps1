$allowedSpecialCharacters = '!','*','?'
$passwordLength = 8
$maximumNumber = 999
$iterations = 10

for($i=1; $i -le $iterations; $i++)
{
$randomWord = Invoke-WebRequest -URI http://randomword.setgetgo.com/get.php?len=$passwordLength
$randomNumber = Get-Random -Maximum $maximumNumber
$randomSpecialCharacter = $allowedSpecialCharacters | Get-Random
Write-Output "$($randomWord.content)$randomNumber$randomSpecialCharacter"
}