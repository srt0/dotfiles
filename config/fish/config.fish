# -----------------------
# fish configuration file
# -----------------------

# The greeting function will print on new shell
function fish_greeting
    # Empty function so no greeting will be prompted
end

eval (direnv hook fish)

set HOME_BIN $HOME/bin
set -x TERMINAL gnome-terminal
set -x EDITOR vim
set -x BROWSER google-chrome-stable
set -x VISUAL vim
set -x LC_ALL "en_US.UTF-8"

set -x JAVA_HOME $HOME_BIN/java/jdk1.8.0_212
set -x GRADLE_HOME $HOME_BIN/gradle
set -x GRADLE_USER_HOME $HOME/.gradle
set -x ANDROID_HOME $HOME_BIN/android/sdk
set -x MVN_HOME $HOME_BIN/maven
set -x CATALINA_HOME $HOME_BIN/tomcat
set -x KAFKA_HOME $HOME_BIN/kafka
set -x FLUTTER_HOME $HOME_BIN/flutter
set -x XDG_CONFIG_HOME $HOME/.config

# PATH {{{
set -x PATH $HOME/.cargo/bin $MVN_HOME/bin $ANDROID_HOME/platform-tools $ANDROID_HOME/tools $GRADLE_HOME/bin $HOME/.local/bin $FLUTTER_HOME/bin $JAVA_HOME/bin $HOME/bin $HOME/.npm-global/bin $PATH
#}}}

source ~/etc/dotfiles/config/fish/aliases.fish

# Load the non versionned work fish script if it exist.
if test -e ~/etc/dotfiles/config/fish/work.fish
    source ~/etc/dotfiles/config/fish/work.fish
end
