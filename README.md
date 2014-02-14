# The Quotinator
================

[![Gem Version](https://badge.fury.io/rb/quotinator.png)](http://badge.fury.io/rb/quotinator)

## Background

I got tired of writing a bunch substitutions to handle the Microsoft fancy quotes and other such special characters. So what better way to never have to do it again than by putting it all into a gem?

## Usage

Just include The Quotinator to your gemfile:
`gem "quotinator"`

Then call any of the functions while passing in the string you wish to clean up. 
`Quotinator.replace("It's your text, why not clean it up?")`

## Available functions

`about`
Outputs a brief description of what the gem does. Pretty much a useless function. 

`replace(txt)`
Shorthand function for `replace_all()`

`replace_all(txt)`
Function which handles replacing all known "special" characters.

`doublequotes(txt)`
Replaces only the special double quotation marks
  
`singlequotes(txt)`
Replaces only the special single quotation marks
  
`ellipsis(txt)`
Replaces only the special ellipsis (...)
  
`longdash(txt)`
Replaces only the special long dash

