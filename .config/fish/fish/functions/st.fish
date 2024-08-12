function st --wraps='tmux source-file ~/.config/tmux/tmux.conf' --description 'alias st=tmux source-file ~/.config/tmux/tmux.conf'
  tmux source-file ~/.config/tmux/tmux.conf $argv
        
end
