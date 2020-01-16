set -gx PATH /home/aunger/.local/lib/python2.7/site-packages $PATH

set EDITOR vim

function md -d "Preview markdown files from the terminal"
  command pandoc -s -f markdown -t man $argv | groff -T utf8 -man | less
end

function pbcopy -d "macOS like clipboard util"
  command xsel --clipboard --input
end

function pbpaste -d "macOS like clipboard util"
  command xsel --clipboard --output
end

alias weather "ansiweather -l Vancouver,CA -u metric -s true -f 5 -d true -a false"

abbr gf "git fetch"
abbr gb "git branch"
abbr gp "git pull"
abbr gco "git checkout"
abbr ga "git add"
alias gs "git status"
alias gl "git log"
alias gd "git diff"
alias gca "git commit -a"

alias nv "vim"
alias bim "vim"
