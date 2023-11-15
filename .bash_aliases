alias gst='git status'
alias nvimnvim='nvim ~/.config/nvim/init.lua'
alias logisim='java -jar ~/downloads/logisim-evolution-3.8.0-all.jar'
alias MARS='java -jar ~/downloads/Mars4_5.jar'
alias lh='ls -lh'
alias kitty='~/.local/kitty.app/bin/kitty'
alias nvimkitty='nvim ~/.config/kitty/kitty.conf'
alias bc='bc -lq'
alias gdb='gdb -q'
cc() {
    echo "gcc $1.c -o $1 -Wall -Wextra -Wshadow -Wnull-dereference";
    gcc $1.c -o $1 -Wall -Wextra -Wshadow -Wnull-dereference;
}
