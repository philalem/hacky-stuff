#default prompt color
COLOR_DEF=$'\e[0m'
#green
COLOR_GIT=$'\e[1;32m'
setopt PROMPT_SUBST
#adds branch name on prompt for macOS terminal for git repos
export PROMPT='%{${ret_status}%} %n %c ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

export PATH="/opt/anaconda3/bin:$PATH"
export PATH="~/Python/3.7/bin:$PATH"

alias xcode="open -a xcode"
alias home="cd ~/Projects-CS"
alias evdev="cd ~/Projects-CS/every-day-dev"

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/(\1)/p'
}

google()
{
    local s="$_"
    local query=

    case "$1" in
        '')   ;;
        that) query="search?q=${s//[[:space:]]/+}" ;;
        *)    s="$*"; query="search?q=${s//[[:space:]]/+}" ;;
    esac

    open -a safari "http://www.google.com/${query}"
}
