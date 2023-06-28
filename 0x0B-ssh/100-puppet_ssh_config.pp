#Using puppet to make changes to the original config file
# To enable access without requiring a password

include stdlib

file_line { 'SSH Private Key':
path               => 'etc/ssh/ssh_config',
line               => 'IdentityFile ~/.ssh/school',
match              => '^[#]+[\s]*(?i)IdentityFile[\s]+~/.ssh/id_rsa$',
replace            => true,
append_on_no_match => true
}

#Regex match explanation
# ^ Beginning of line
# [#]* at least one hash character
# [\s]* zero or more white space characters
# (?i)IdentityFile case insensitive
# [\s]+ at least one whitespace character
# ~/.ssh/id_rsa The ssh private key file path to replace
# $ end of the line

file_line { 'Deny Password Auth':
path               => '/etc/ssh/ssh_config',
line               => 'PasswordAuthentication no',
match              => '^[#]+[\s]*(?i)PasswordAuthentication[\s]+(yes|no)$',
replace            => true,
append_on_no_match => true
}

#Regex match explanation
# ^ beginning of line
# [#]* at least one hash character
# [\s]* zero or more whitespaces characters
# (?i) PasswordAuthentication case insensitive "PasswordAuthentication"
# [\s]+ At least one white space character
# (yes|no) with the value "yes" or "no"
# $ end of line
