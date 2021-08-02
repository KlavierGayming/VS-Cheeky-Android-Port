
# Credits
### Friday Night Funkin'
 - [ninjamuffin99](https://twitter.com/ninja_muffin99) - Programming
 - [PhantomArcade3K](https://twitter.com/phantomarcade3k) and [Evilsk8r](https://twitter.com/evilsk8r) - Art
 - [Kawai Sprite](https://twitter.com/kawaisprite) - Music

This game was made with love to Newgrounds and its community. Extra love to Tom Fulp.

### Vs Cheeky
- [Lexicord](https://twitter.com/Lexicord2) - Programmer (not very good at it) And Charter
- [Wizord](https://www.youtube.com/channel/UClzy-sCSC2H3Xw_UDY0ndNw) - Animation, Art, and Music
- [Lonestarr](https://soundcloud.com/lonestaranthony) - Music
- [Klavier Gayming](https://youtube.com/c/KlavierGayming) - Android Port

### Kade Engine
- [KadeDeveloper](https://twitter.com/KadeDeveloper) - Maintainer and lead programmer
- [The contributors](https://github.com/KadeDev/Kade-Engine/graphs/contributors)


### Compiling instructions for android

0.first need to install using this guide
https://github.com/ninjamuffin99/Funkin

1.we need to install android studio, jdk, ndk Revision 15c

jdk - https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html
android studio - https://developer.android.com/studio
ndk - https://developer.android.com/ndk/downloads/older_releases?hl=fi

2.install jdk

3.need to install sdk in android studio (in settings -> Appearance & Behavior -> system settings -> android sdk)
![andr](https://user-images.githubusercontent.com/59097731/104179652-44346000-541d-11eb-8ad1-1e4dfae304a8.PNG)
![andr2](https://user-images.githubusercontent.com/59097731/104179943-a9885100-541d-11eb-8f69-7fb5a4bfdd37.PNG)

4.unzip ndk

5.and run command "lime setup android"
you need to do as in the picture
![lime](https://user-images.githubusercontent.com/59097731/104179268-9e80f100-541c-11eb-948d-a00d85317b1a.PNG)

6.copy folder lib to C:\HaxeToolkit\haxe

7. Before you build, run haxelib git extension-webm-2 https://github.com/KadeDev/extension-webm, this will install extension-webm which is needed for compiling thanks to the video. if you want to build for android, run lime rebuild extension-webm-2 android. if it doesn't work, get the libs from [here](https://www.mediafire.com/file/8jteungeq2bzc3l/Android.zip/file) and paste them into c:/HaxeToolkit/lib/extension-webm-2/git/ndll. should do the job. building for windows? just do lime rebuild extension-webm-2 windows :) should be it

8.open project in command line
and run command "lime test android"
