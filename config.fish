set fish_greeting
if status --is-interactive
    set GOROOT $HOME/go
    set PATH $PATH ~/bin ~/android-studio/bin $GOROOT/bin;
end
