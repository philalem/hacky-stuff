export PATH="/opt/anaconda3/bin:$PATH"
export PATH="~/Python/3.7/bin:$PATH"

alias xcode="open -a xcode"

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
