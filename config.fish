set fish_greeting
if status --is-interactive
    set GOROOT $HOME/go
    set PATH $PATH ~/bin ~/android-studio/bin $GOROOT/bin;
end


set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
   set_color yellow
   printf '%s' (whoami)
   set_color -o black
   printf '@'

   set_color magenta
   printf '%s' (hostname|cut -d . -f 1)
   set_color normal
   printf ' '

   set_color $fish_color_cwd
   printf '%s' (prompt_pwd)
   set_color normal

   set_color red
   printf '%s ' (__fish_git_prompt)

   # Line 2
   echo
   if test $VIRTUAL_ENV
     printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
   end
   printf '↪ '
   set_color normal
end
