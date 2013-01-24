if [[ ! -o interactive ]]; then
    return
fi

compctl -K _bundlizer bundlizer

_bundlizer() {
    local words completions
    read -cA words

    if [ "${#words}" -eq 2 ]; then
        completions="$(bundlizer commands)"
    fi

    reply=("${(ps:\n:)completions}")
}
