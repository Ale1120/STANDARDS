#Install any dependencies if they are missing
sudo apt-get -f install


1) GIT:

    1.1) Install
        sudo apt-get update
        sudo apt-get install git
        
    1.2) Configure
        git config --global user.name "Your Name"
        git config --global user.email "youremail@domain.com"
        git config --list
        

2) Browsers

    2.1) Google Chrome:
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
        sudo apt-get install -f
    
    2.1.1) Addons
        https://chrome.google.com/webstore/detail/1react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi
        https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd?hl=es

3) Java:

    3.1)Install
        sudo apt-get update
        sudo apt-get install openjdk-8-jdk
        sudo apt-get install openjdk-8-source #this is optional, the jdk source code
        
    3.2) Java Alternatives //to verify the javas in the environment
        sudo update-alternatives --config java
        
    3.3) Java Default //to verify which java is being used by default
        java -version
        
    3.4) SET $JAVA_HOME & $PATH
        ls -l /etc/alternatives/java // TO VERIFY YOUR JAVA LOCATION
        export JAVA_HOME=<your java location>
        export PATH=$PATH:<your java location>
        
4) Nodejs:

    4.1) Install
        curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
        sudo apt-get install -y nodejs
        node -v
        
    4.2) npm
        sudo npm install npm --global

5) Atom:

    5.1) Install
        sudo curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
        sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
        sudo apt-get update
        sudo apt-get install atom
        
    5.2) Plugins (optional)
        *Install this commands
            apm install react-native-snippets
            apm install atom-react-native-style
        
        
        *Install a package
        plataformio-ide-terminal
        react-native-components
        language-javascritp-jsx
        
        To improve atom:
        -File Icons
        -Mini-Map
        -Atom Beautify
        -Highlight Selected

6) Yarn:

    6.1) Install
        curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
        echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
        sudo apt-get update && sudo apt-get install yarn

7) Skype:

    7.1) Install
        // Go to https://www.skype.com/es/get-skype/ download the skype .deb (NOT RPM)
        cd $HOME/Downloads/
        sudo dpkg -i skypeforlinux-64.deb
        
8)Android Studio

    8.1) URL
        https://developer.android.com/studio/index.html
    
    8.2) Install Android Studio
        Download and install Android Studio. 
        Make dir usr at home folder. Make dir local inside usr.
        Copy the downloaded zip to this location.
        Extract
        Go to android-studio/bin
        to run the installer, in the terminal @android-studio/bin type : exec ./studio.sh
        Choose a "Custom" setup when prompted to select an installation type. Make sure the boxes next to all of the following are checked:
            *Android SDK
            *Android SDK Platform
            *Android Virtual Device
        Then, click "Next"
        
    8.3) Install dependencies to run
        The first time you open android studio you would need to create an empty project to install gradle dependencies, you can find the notification in the low bar in studio UI.
        There's going to be notifications to update/upgrade gradle/components in the low bar there are multiple updates and restarts, studio is ready when gradle say it's sync.
        
    8.4) Install SDK
        Requires the Android 6.0 (Marshmallow) SDK in particular
        Click on "Configure", then select "SDK Manager".
            Android 6.0 (Marshmallow) entry, then make sure the following items are all checked:
                    *Google APIs
                    *Android SDK Platform 23
                    *Intel x86 Atom_64 System Image
                    *Google APIs Intel x86 Atom_64 System Image
        Next, select the "SDK Tools" tab and check the box next to "Show Package Details".Look for and expand the "Android SDK Build-Tools" entry, then make sure that 23.0.1 is selected.
        Finally, click "Apply".
    
    8.5) Configure the ANDROID_HOME environment variable
        Add the following lines to your .bash  and .profile config file:
        export ANDROID_HOME=$HOME/Android/Sdk
        export PATH=$PATH:$ANDROID_HOME/tools
        export PATH=$PATH:$ANDROID_HOME/platform-tools
    
    8.6) Create a Virtual Device (If there's none)
        Select the category phone and choose the desired model, the default it's used Nexus 5 or 5XL.
        Next, choose the system image in the x86 Images, and select:
            Marshmallow API Level 23 (x86_64) - Android 6.0 (Google APIs)
        Chosse <device name> and finish
    
    8.7) Open emulator from Terminal //NEED TO CREATE A DEVICE FIRST.
        Add this to Bashrc: alias emu="$ANDROID_HOME/tools/emulator"
        Run this from terminal: emu -avd <device name>
    
9)  React Native

    9.1) Install
        sudo npm install -g react
        sudo npm install -g react-redux
        sudo npm install -g react-native-cli
        sudo npm install webpack-dev-server -g

    9.2) Library Dependencies
        sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
    
    9.3) Create new projects
        react-native init <poject's name>
    
    9.3.1)Start project //NEED THE VIRTUAL DEVICE EXECUTED IF NOT GO TO 8)
        cd <project's name>
        sudo npm start
        //open new terminal in the folder pf the new project
        react-native run-android

10) Postgres
    
    8.1) Install
        sudo apt-get update
        sudo apt-get install postgresql postgresql-contrib
        
    8.2 pgadmin4
        //more information with oscar
        https://medium.com/@philip.mutua/postgresql-install-pgadmin-4-desktop-mode-in-ubuntu-16-04-6faca19f0cfe