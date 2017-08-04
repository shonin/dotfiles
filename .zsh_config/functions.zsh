port () { lsof -i tcp:"$@"; }

google() {
    local query="$*"
    open "https://www.google.com/search?q=${query}"
}

# opens the JSTOR jira ticket for the argument provided
# or will open the ticket for the current branch if no arg
jira() {
    local ticket="$*"
    if [ "$ticket" ]; then
        open "https://jira.jstor.org/browse/${ticket}"
    elif [ "$(current_branch)" ]; then
        open "https://jira.jstor.org/browse/$(current_branch)"
    else
        echo $fg_bold[red] "ERR: no args provided, not on a git branch"
    fi
}
