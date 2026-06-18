function __abbr_git_commit_date
    echo "git commit --date='$(date +"%Y-%m-%dT%H:%M:%S")' -sm \"%\""
end

abbr --add gcm --set-cursor "git commit -sm \"%\""
abbr --add gcmd --set-cursor --function __abbr_git_commit_date
abbr --add gpull "git pull"
abbr --add gpush "git push"
abbr --add gcloned "git clone --depth=1"
