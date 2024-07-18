export PATH="$PATH:$(yarn global bin)"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools"
export PATH="$PATH:$HOME/Android/Sdk/emulator"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$(brew prefix llvm)/bin"
export PATH="$PATH:$(brew prefix libxslt)/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.rbenv/bin"
export PATH="$PATH:$HOME/.local/bin"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_AVD_HOME="$HOME/.android/avd"

export EDITOR="vim"
export BUNDLER_EDITOR="code"

eval "$(rbenv init - zsh)"
eval "$(atuin init zsh)"
eval "$(pyenv init --path)"
eval "$(nodenv init -)"
eval "$(starship init zsh)"

source "$HOME/.docker/init-zsh.sh" || true # Added by Docker Desktop
source "$(brew prefix zinit)/zinit.zsh"
