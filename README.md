# AnagramChecker
It allows two ways input:
1. It should provide us with an interactive command prompt based shell where inputs can be typed in
2. Input will be a file containing one word per line. The program should take a file name as an input parameter.   Plain text files are good enough for this exercise purpose.
Output required is to identify which words are anagrams of each other and group them together into a single line.

For example:
The input will be of the form:
  enlist
  sinks
  red
  listen
  sort
  yellow
  silent
  rots
  skins
  inlets

The output will be as under:
  enlist inlets listen silent
  sinks skins
  rots sort
  red
  yellow

