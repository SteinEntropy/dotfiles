# Dotfiles Installation Guide

Follow these steps to set up your environment with my dotfiles.

## 1. Install Homebrew

Homebrew is a package manager for macOS. To install it, run the following command:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Add Homebrew to Path

After installing Homebrew, add it to your shell’s path:
```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"
```

## 2. Install iTerm2

Install iTerm2 using Homebrew:
```
brew install --cask iterm2
```

## 3. Install Git

Install Git with Homebrew:
```
brew install git
```

You can verify Git installation with:
```
git --version
```

## 4. Install Oh My Zsh

Oh My Zsh is a framework for managing Zsh configurations. Install it with the following command:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 5. Install Powerlevel10K Theme for Oh My Zsh

Powerlevel10K is a theme for Zsh that offers an elegant and fast prompt.

Clone the Powerlevel10K repository:
```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

### Set Powerlevel10K as the Zsh Theme

Edit your `~/.zshrc` file and set `ZSH_THEME` to `powerlevel10k/powerlevel10k`:
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

To apply the changes, restart your terminal or run:
```
source ~/.zshrc
```

## 6. Install Nerd Font

Powerlevel10K requires a Nerd Font for proper display. Install a Nerd Font in iTerm2:

- Press `y` to install the font.
- Quit iTerm2.

## 7. Clone the Dotfiles Repository

Clone your dotfiles repository and set it up:

```
git clone https://github.com/SteinEntropy/dotfiles.git ~/dotfiles
```

## 8. Install Dependencies with Homebrew Bundle

Finally, use Homebrew to install all the required dependencies defined in the `Brewfile`:
```
cd ~/dotfiles
brew bundle --file=~/dotfiles/.Brewfile
```

---

### **You're done!** Enjoy your personalized setup. 🎉

---

# Additional Software

Here are the key software tools I use regularly:

**[iTerm2](https://iterm2.com/)** (Terminal): Already installed in the earlier steps.


**[Anki](https://apps.ankiweb.net/)** (Spaced Repetition Software):
  
To install Anki, run:
```
brew install --cask anki
```

**[Arc](https://arc.net/)** (Main Web Browser):

Install Arc via Homebrew:
```
brew install --cask arc
```

**[Obsidian](https://obsidian.md/)** (Second Brain, Note-Taking):

Install Obsidian:
```
brew install --cask obsidian
```

**[NordPass](https://nordpass.com/)** (Password Management): 

Install NordPass:
```
brew install --cask nordpass
```
**[NordVPN](https://nordvpn.com/)** (VPN Service): 

Install NordVPN:
```
brew install --cask nordvpn
```

**[Spotify](https://www.spotify.com/)** (Music Player): 

Install Spotify:
```
brew install --cask spotify
```

**[Discord](https://discord.com/)** (Communication): 

Install Discord:
```
brew install --cask discord
```

**[Raycast](https://www.raycast.com/)** (Application Launcher & Window Management): 

Install Raycast:
```
brew install --cask raycast
```

**[QMK Toolbox](https://qmk.fm/toolbox/)** (Keyboard Configurator): 

Install QMK Toolbox:
```
brew install --cask qmk-toolbox
```

**[Mos](https://mos.caldis.me/)** (Smooth Mouse Scrolling): 

Install Mos:
```
brew install --cask mos
```
