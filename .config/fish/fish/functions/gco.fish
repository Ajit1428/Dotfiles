function gco --wraps='git checkout --orphan' --description 'alias gco git checkout --orphan'
  git checkout --orphan $argv
        
end
