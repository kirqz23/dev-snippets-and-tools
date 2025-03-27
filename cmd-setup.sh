# INSTRUCTIONS FOR BETTER DEVELOPER EXPERIENCE

xcode-select --install

brew install --cask iterm2

brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Clone and run zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Update your ~/.zshrc file by changing plugins as follows
plugins=(git colored-man-pages colorize pip python brew zsh-syntax-highlighting zsh-autosuggestions) 

brew install --cask font-jetbrains-mono-nerd-font
brew install starship

# Update your ~/.zshrc file adding
eval "$(starship init zsh)"

# Save this file without .txt extension. After it is saved, in iTerm Settings->Profiles->Colors 
# import that in Color Presetes... and choose that from the dropdown list
https://raw.githubusercontent.com/hwyncho/ayu-iTerm/refs/heads/master/ayu%20Mirage.itermcolors

# Change iTerm Settings->Profiles->Text->Font to JetBrainsMono Nerd Font Mono

brew install zoxide

brew install fzf

# Update your ~/.zshrc file adding
eval "$(zoxide init zsh --cmd cd)"

# At the end load current zsh
source ~/.zshrc

# if there is no `code` command in zsh path, but you have already VS Code installed:
# 1. Open VS Code
# 2. Press Cmd+Shift+P
# 3. Type "Shell Command" and select "Shell Command: Install 'code' command in PATH"
# 4. Close and reopen your terminal, then try running code . again
