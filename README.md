# First-Repeated-Character---Powershell
This was a coding exercise to have a function that would take a string as input and would return the first character that was repeated.

I could have made this fancier and added some bells and whistles to take case ensitivie into account, or to allow for it to habndle numeric values as string chars, validate the input and spit out the result, and that type of thing, but that wasn't what was asked for.

Essentially, the logic flow is:

1. create a new, empty array.
2. Use a RegEx expression to clean punctuation, numbers and white space from the string
3. convert the input string in to a array of characters
4. loop through the string one caracter at a time

If the work array contains the character, return the character, if not, add the character to the array.
  
Maximum size the array should ever get is 25

