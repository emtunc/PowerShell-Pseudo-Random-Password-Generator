<#
	.SYNOPSIS
		Generate a random password
	
	.DESCRIPTION
		Uses the setgetgo.com random word API to generate random words. A random number and special character is then appended
	
	.PARAMETER numberOfPasswords
		Number of passwords to generate. Default is 1.
	
	.PARAMETER wordLength
		Word length. Default is 8.
	
	.PARAMETER allowedSpecialCharacters
		Special characters that are allowed to be appended to the password. Default is ! * and ?
		If defining your own, use the format:
		Generate-Password -allowedSpecialCharacters "!","?",",","/"
	
	.PARAMETER maximumNumber
		Default number to append to word will be between 0 and 999.
	
	.EXAMPLE
		PS C:\> Generate-Password
		This will generate a random 8 character word, append a number between 0 and 999 and finally append a special character.
	
	.NOTES
		Additional information about the function.
#>
function Generate-Password
{
	[CmdletBinding()]
	[OutputType([string])]
	param
	(
		[Parameter(Mandatory = $false)]
		[int]$numberOfPasswords = 1,
		[Parameter(Mandatory = $false)]
		[int]$wordLength = 8,
		[Parameter(Mandatory = $false)]
		$allowedSpecialCharacters = @('!', '*', '?'),
		[Parameter(Mandatory = $false)]
		[int]$maximumNumber = 999
	)
	
	for ($i = 1; $i -le $numberOfPasswords; $i++)
	{
		$randomWord = Invoke-WebRequest -URI http://randomword.setgetgo.com/get.php?len=$wordLength
		$randomNumber = Get-Random -Maximum $maximumNumber
		$randomSpecialCharacter = $allowedSpecialCharacters | Get-Random
		Write-Output "$($randomWord.content)$randomNumber$randomSpecialCharacter"
	}
}
