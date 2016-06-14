# PowerShell Pseudo-Random Password Generator

A pseudo-random password generator written in PowerShell. Especially useful in educational environments where students are mass-enrolled at the beginning of term.

### Prerequisities

- > PowerShell v3

### How to Use

You can take the code and create a dedicated script with it or you can import it to an existing script and use it as a function which is what I have done - you can see a screenshot of this below.

Simply import the module and run the Generate-Password cmdlet. If you don't define any parameters then a sensible default will run (see the .PARAMETER's in the script).

Available Parameters:
- numberOfPasswords - number of passwords to generate
- wordLength - the length of the word to generate
- allowedSpecialCharacters - what special characters to permit

### Screenshots

![PowerShell ISE](/Screenshots/PowerShell.png?raw=true "PowerShell ISE")

## Credits

- setgetgo.com for making the random word generator API available for public use

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
