# First-Repeated-Character: Powershell
This was a coding exercise to have a function in PowerShell that would take an imput string as input and would return the first character that was repetition.

I could have made this fancier and added some bells and whistles to take case sensitivity into account, or to allow for it to handle numeric values as string chars, or validate the input, and that type of thing, but that wasn't what was asked for.

Essentially, the logic flow is:

1. create a new, empty array.
2. Use a RegEx expression to clean punctuation, numbers, and white space from the input string
3. convert the input string in to a array of characters
4. loop through the input string one caracter at a time

If the array contains the character, return the character; if not add char to an array.
  
Maximum size the array should ever get is 25 characters

