alias gst='git status'
alias gdb='gdb -q'
# alias nvim='~/nvim.appimage'
alias nvimnvim='nvim ~/.config/nvim/init.lua'
alias logisim='java -jar ~/downloads/logisim-evolution-3.8.0-all.jar'
alias MARS='java -jar ~/downloads/Mars4_5.jar'
alias lh='ls -lh'
alias kitty='~/.local/kitty.app/bin/kitty'
alias nvimkitty='nvim ~/.config/kitty/kitty.conf'
alias bc='bc -lq'
alias gdb='gdb -q'
alias py='python3'
alias python='python3'
cc() {
    echo gcc $1.c -o "$@" -Wall -Wextra -Wshadow -Wnull-dereference;
    gcc $1.c -o "$@" -Wall -Wextra -Wshadow -Wnull-dereference;
}
ccpp() {
    echo g++ $1.cpp -o "$@" -Wall -Wextra -Wshadow -Wnull-dereference;
    g++ $1.cpp -o "$@" -Wall -Wextra -Wshadow -Wnull-dereference;
}
timer() {
    seconds=$(($1))
    start="$(($(date +%s) + $seconds))"
    while [ "$start" -ge `date +%s` ]; do
        time="$(( $start - `date +%s` ))"
        printf '%s\r' "$(date -u -d "@$time" +%H:%M:%S)"
    done
}
