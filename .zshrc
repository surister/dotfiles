# Path to your oh-my-zsh installation.
export ZSH="/home/surister/.oh-my-zsh"

export PATH=$PATH:/home/surister/scripts/
export PATH=$PATH:/home/surister/scripts/drive/
export PATH=$PATH:/home/surister/.local/bin/

export PATH=$PATH:/home/surister/flutter/bin/
export PATH=$PATH:/home/surister/flutter2/flutter/bin/
export PATH=$PATH:/home/surister/.gradle

export PATH=$PATH:/home/surister/.local/share/JetBrains/Toolbox/apps/AndroidStudio/ch-0/193.6626763/plugins/gradle/lib

export JAVA_HOME=/usr/lib/jvm/default


export PATH=$PATH:/home/surister/Android/Sdk

export ANDROID_SDK_ROOT=/home/surister/Android/Sdk/

export PATH=$PATH:/home/surister/Android/Sdk/platform-tools:/home/surister/Android/Sdk/tools

export CHROME_EXECUTABLE=/usr/bin/chromium

alias cat='bat --theme=ansi'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history time ssh status)


# DIR
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='213'
POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
POWERLEVEL9K_DIR_HOME_FOREGROUND='darkorange3'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='darkorange3'

# VCS
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='springgreen1'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='springgreen3'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='225'

# USER
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='darkorange'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_USER_ROOT_FOREGROUND='196'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="┏"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="┗❯ "

# getColorCode foreground/background
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.powerlevel10k/powerlevel10k.zsh-theme
