### Functions for setting and getting environment variables from the OSX keychain ###
### Adapted from https://www.netmeister.org/blog/keychain-passwords.html ###

# Use: get-env-var NAME
function get-env-var () {
    security find-generic-password -w -a ${USER} -D "environment variable" -s "${1}"
}

# Use: add-env-var NAME
function add-env-var () {
    [ -n "$1" ] || print "Missing environment variable name"
    
    # Note: if using bash, use `-p` to indicate a prompt string, rather than the leading `?`
    read -s "?Enter Value for ${1}: " secret
    
    ( [ -n "$1" ] && [ -n "$secret" ] ) || return 1
    security add-generic-password -U -a ${USER} -D "environment variable" -s "${1}" -w "${secret}"
}

# Use: del-env-var NAME
function del-env-var () {
    [ -n "$1" ] || print "Missing environment variable name"

    security delete-generic-password -a ${USER} -D "environment variable" -s "${1}"
}
