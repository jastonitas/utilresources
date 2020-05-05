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
sudo ~/android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools" "platforms;android-28" "build-tools;28.0.3"
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
printf "\nexport ANDROID_HOME=$ANDROID_HOME\nexport PATH=\$PATH:\$ANDROID_HOME/tools/bin\nexport PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> ~/.zshrc
sudo chown $USER:$USER $ANDROID_HOME -R
pushd /usr/local/bin/
sudo ln -s ~/android-sdk-linux/platform-tools/adb
popd
sudo apt-get install gradle
gradle -v
adb start-server
