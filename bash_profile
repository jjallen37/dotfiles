alias where='which'

export NVM_DIR="/Users/ibmjja/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Add adb, android to path. Add Java_home
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/Users/ibmjja/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:/Users/ibmjja/bin

# added by Anaconda2 2.4.1 installer
export PATH="/Users/ibmjja/anaconda/bin:$PATH"

# added by Anaconda2 2.4.1 installer
export PATH="/Users/ibmjja/anaconda2/bin:$PATH"
