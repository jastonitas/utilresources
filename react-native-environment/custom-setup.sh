# Note I'm using zsh, if you use bash, you should copy variable initialization into .bashrc or .bash_profile
sudo apt-get install zip unzip
wget https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip
unzip commandlinetools-linux-6200805_latest.zip -d android-sdk-linux
rm ~/commandlinetools-linux-6200805_latest.zip
sudo apt-get install -y lib32z1 openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin
printf "\nexport JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.zshrc
export ANDROID_HOME=~/android-sdk-linux
sudo ~/android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools" "platforms;android-29" "build-tools;29.0.2"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
printf "\nexport ANDROID_HOME=$ANDROID_HOME\nexport PATH=\$PATH:\$ANDROID_HOME/tools\nexport PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> ~/.zshrc
sudo apt-get install gradle
gradle -v
adb start-server
