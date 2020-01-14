# Terminal stuff
alias reload="exec $SHELL -l"
alias a="code ~/.bash_aliases" # Open alias file in vscode
alias sudo="sudo "
alias uuid="uuidgen | tr -d - | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"

#Time
alias wk='date +"%V"'

# ls better
alias la="ls -aF"
alias ld="ls -ld"
alias ll="ls -l"
alias lh="ls -S -lah"
alias lt='ls -At1 && echo "------Oldest--"'
alias ltr='ls -Art1 && echo "------Newest--"'

# Rails
alias r="rails "
alias rc="rails c "
alias rs="rails s "
alias b="bundle "
alias be="bundle exec"
alias bi="bundle install"
alias remigrate="bundle exec rake db:drop db:create db:migrate db:schema:load"

# Docker
alias c="docker-compose "
alias cup="docker-compose up"
alias cdown="docker-compose down"
alias cr="docker-compose run "
alias cx="docker-compose exec "
alias dkps="docker ps"
alias dknuke="docker system prune --volumes"

# Docker sync
alias cupd="docker-compose -f docker-compose.yml -f docker-compose-dev.yml up"
alias cdownd="docker-compose -f docker-compose.yml -f docker-compose-dev.yml down"
alias dss="docker-sync-stack"
alias ds="docker-sync"

# WebStuff
alias localhost="python -m SimpleHTTPServer ${1}"
alias ngo="ngrok authtoken 6KX3ySPsdsdMuw62bGkotFssC_42LZyVWpBbd7Qya3hWbVR ${1}"

# Application Shortcuts
alias chrome="open -a \"Google Chrome\"" "${1}"

# IP addresses
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# File system shortcuts
alias sp="cd ~/Developer/Projects/some_project"
alias sb="cd ~/Developer/Sandbox"
alias k8="cd ~/Developer/Projects/k8"
alias vagrant="cd ~/Vagrant"
alias ws="open -n /Applications/Wireshark.app"

# Mac Only
# Finder show/hide hidden files
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
