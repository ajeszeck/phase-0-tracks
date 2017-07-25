# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”
"zom".insert(1, "o")
"zom".insert(-2, "o")

# "enhance".<???>
# => "    enhance    "
"enhance".ljust(11).rjust(15)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"
"the usual".insert(9, " suspects")
"the usual".insert(-1, " suspects")


# " suspects".<???>
# => "the usual suspects"
" suspects".insert(0, "the usual")
" suspects".insert(-10, "the usual")
" suspects".prepend("the usual")

# => "The case of the disappearing last lette".<???>
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".chop
"The case of the disappearing last letter".slice(0, 39)

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".slice(1, 38)

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
"Elementary,    my   dear        Watson!".squeeze(" ")

# "z".<???>
# => 122 
"z".ord
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII value given to the lower case letter "z".

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
"How many times does the letter 'a' appear in this string?".count("a")