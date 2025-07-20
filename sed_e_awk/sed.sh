#!/bin/bash

## sed [OPTIONS] 'command' file
## -i Edit file in-place
## -n Suppress automatic printing
## -e Multiple Commands - sed -e 's/foo/bar/' -e 's/baz/qux/' file
## command Nd: Delete N lines
## command Np: Print lines
## command s/foo/bar: Substitute occurrences foo with bar
## command Ni/foo: Insert foo before line N
## command Na/foo: Append foo after line N
## command Nc/foo: Change line N entirely
## 
## Test with
##      sed 's/dog/cat/' <<< "I love my dog"

sed '2d' file          # Delete 2nd line
sed '1,3d' file        # Delete lines 1 to 3

sed -n '2p' file         # Print only line 2
sed -n '3,5p' file       # Print lines 3 to 5

# Replace every occurrence of "AAAA" by "BBBB" 
echo "AAAA" | sed 's/AAAA/BBBB/g'

# Replace only the 2nd occurrence of "AAAA" in each line of the file.
sed 's/AAAA/BBBB/2' sed_test.txt

# Stream to output the content of the file replacing only the first occurrence 
#
# It search only between the index 0 and the first occurrence of AAAA, 
# so it will replace only the first occurrence of AAAA
sed '0,/AAAA/{s/AAAA/BBBB/}' sed_test.txt

# Capture the match and replace the group
#
#  \( is an escapes for (
#  \) is an escapes for ) 
# () is a match (may need to be escaped \(\), it will be stored
# (AAAA) is the first match, it will be stored as \1
# (BBBB) is the second match, it will be stored as \2
# In the replacing operation, \2 = BBBB and \1 = AAAA
echo "AAAABBBB" | sed 's/\(AAAA\).*\(BBBB\)/ \2 HELLO \1 /g'

# Split name, extension and directory of a file
#
# \(.*\)\/ is the first match, it captures all characters
# 	 until "/" (escaped as \/ ) and will be stored as \1
# \(.*\)  is the second match, it will be stored as \2
# \.\(.*\)$ is the third match, it captures all characters
#	from "." (escaped as \. ) to the end 
#
realpath sed.sh | sed 's/\(.*\)\/\(.*\)\.\(.*\)$/ DIRECTORY: \1 FILENAME: \2 EXT: \3 /'

