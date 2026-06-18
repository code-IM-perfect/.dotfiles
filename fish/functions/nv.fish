function nv --wraps='nvim .' --wraps='nvim -u ~/.dotfiles/nvim.new/init.lua' --wraps='NVIM_APPNAME=nvim.new nvim' --description 'alias nv NVIM_APPNAME=nvim.new nvim'
    NVIM_APPNAME=nvim.new nvim $argv
end
