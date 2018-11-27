export PS1="\w$ "

#cat $HOME/.profile

#root@localhost: %7.yqt%:YF1(

export ANDROID_SDK="/Users/vitalipom/android-sdk-macosx"
export ANDROID_HOME="$ANDROID_SDK"
#export ANDROID_NDK="/Users/vitalipom/android-ndk-r9d"
export GRADLE_HOME="/usr/local/Cellar/gradle/4.3/bin/"
export PATH="$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$ANDROID_NDK:$GRADLE_HOME:/Users/vitalipom/pear/bin:"
export ANDROID_NDK_ROOT="/Users/vitalipom/android-ndk-r10d"



export ANDROID_NDK=$ANDROID_NDK_ROOT
export TARGET_ARCH="x86_64"
export TARGET_OS="darwin"
export SYS_VERSION="10.10"
export ANDROID_GRADLE=$GRADLE_HOME


export IP_GENIESTILLS="35.198.99.254"
export USER_GENIESTILLS="vitali_pom"
export SERVER_GENIESTILLS="vitali_pom@35.198.99.254"
export SSH_GENIESTILLS="~/.ssh/.gc_rsa"

defaults write com.apple.LaunchServices LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.apple.dt.Xcode;}'



#######
export PATH="/usr/local/mysql/bin/mysql:$PATH"
#######
export PATH="/Applications/phantomjs:$PATH"

source ~/.aliases
##

# Your previous /Users/vitalipom/.bash_profile file was backed up as /Users/vitalipom/.bash_profile.macports-saved_2015-09-08_at_11:59:12
##

# MacPorts Installer addition on 2015-09-08_at_11:59:12: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.





#unmark the following for faster google search AND for wifi iDevices communication
#su networksetup -setdnsservers Wi-Fi 8.8.4.4 8.8.8.8
#########THE UPPER SHALL BE SUFFIECIENT
###208.67.222.222 208.67.220.220
###192.168.1.1 0.0.0.0



export PATH=$PATH:$PWD




#for $brew doctor  #:
export PATH=/usr/local/bin:$PATH
##
# Your previous /Users/vitalipom/.bash_profile file was backed up as /Users/vitalipom/.bash_profile.macports-saved_2016-04-09_at_20:34:37
##

# MacPorts Installer addition on 2016-04-09_at_20:34:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export PATH=$PATH:~/appengine-java-sdk-1.9.53/bin/



export MULTI_DIFF=1 # All diffs simultaneously
export P4DIFF=$HOME/bin/p4diff_bc.sh

#####
#git remote add google https://source.developers.google.com/p/effectedkeyboardsociaigit/r/EffectedKeyboardSocialGit





# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vitalipom/google-cloud-sdk/path.bash.inc' ]; then source '/Users/vitalipom/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vitalipom/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/vitalipom/google-cloud-sdk/completion.bash.inc'; fi


bind -f ~/.inputrc
source ~/.aliases
