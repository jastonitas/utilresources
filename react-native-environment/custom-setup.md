On Windows
1. Install Ubuntun WSL :)
2. Install Visual Studio Code
3. Install "Remote Development" extension pack for VSC
4. Connect development folder to VSC my writting "code" from inside of the WSL terminal.
5. Install development packages in WSL (nodejs, android sdk, etc.)
  5.1 sudo apt update && sudo apt get install nodejs 
  5.2 https://gist.github.com/jjvillavicencio/18feb09f0e93e017a861678bc638dcb0/
     export ANDROID_HOME=$PWD/android-sdk-linux
     yes | android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} --licenses
     android-sdk-linux/tools/bin/sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools" "platforms;android-${ANDROID_COMPILE_SDK}" >/dev/null
     (https://android.tutorials24x7.com/blog/how-to-install-android-sdk-tools-on-ubuntu)

