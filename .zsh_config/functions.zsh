port () { lsof -i tcp:"$@"; }

google() {
    local query="$*"
    open "https://www.google.com/search?q=${query}"
}

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
