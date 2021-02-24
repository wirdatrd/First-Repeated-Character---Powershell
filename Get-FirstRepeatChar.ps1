
<#
.SYNOPSIS
    This script/function returns the first repeat char of a string.

.DESCRIPTION
    A more detailed description of why and how the function works. The return 
    value is the first character that is the second instance of itself.

    The logic will be as follows:
    Remove white space from the input string, and convert it ToCharArray()
    The first @char will not be in @characters, and will be added to it.
    if the next $char is already in the $characters array, return $char
    if it doesn't exist in the array either, add it to $characters
    continue untill the first @char is found that already exists in the @characters array
   
.PARAMETER $string
    REQUIRED:  The $string parameter is the only input parametr, and is the string
    to be searched for repeat charachters.

.EXAMPLE
    $example = "She sells sea shells by the sea shore."
    Get-FirstRepeatChar($example)
    Expected output: "s"

.EXAMPLE
    Get-FirstRepeatChar( "How Far Away Are They?" )
    Expected output:  "w"

.TO-DO: (maybe)
    1:  Account for case sensitivity
    2:  allow it to recieve a string from pipeline and pass result to 
        next pipeline member.

.NOTES
    Author: $env:username
    Last Edit: Get-Date
    Version v0.0.1 - initial test release
    Version v1.0.0 - initial production release/update

#>   ##  testing:  $string = "The quick, brown fox jumped over the lazy dog."

function Get-FirstRepeatChar {
    param (
        [string[]]$string
    )
    
    $characters = @()
    $str = ""

    ##  RegEx to get just alpha chars
    $pattern = '[^a-zA-Z]' 
     
    ##  this will remove white space and punctuaion
    $str = $string -replace $pattern, ''   
    
    foreach ( $char in $str.ToCharArray() ) {  
        if ( $characters.Contains($char) ) {
            return $char
        } else {  
            $characters += $char
        }
    }

    return "No duplicate characters found."
}


<########################################################################
                Tests included the following:

[String]$test1 = "The quick, brown, fox jumped over the laszy dog."

Get-FirstRepeatChar -string $test1

Get-FirstRepeatChar($test1)

Get-FirstRepeatChar("1234")

Get-FirstRepeatChar("Every day is like sunday.  Everyday is silent and gray.")

########################################################################>
