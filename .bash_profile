# OSX uses bash_profile by default for every shell
# use bashrc for convience, there is a couple of downsides but not much that i care about
if [ -f ~/.bashrc ]; then
        source ~/.bashrc
fi

if [ -e /Users/evanhuang/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/evanhuang/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
