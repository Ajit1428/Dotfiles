function ta --wraps='tmux -t attach' --wraps='tmux attach -t' --description 'alias ta=tmux attach -t'
  tmux attach -t $argv
        
end
