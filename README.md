Pine   
====  

Hassle free .gitignore file manager. Pine uses GitHub's existing gitignore [repository](https://github.com/github/gitignore) to manage `.gitignore` file, thus allowing fast and easy gitignore management.

Installation  
------------  
Before installing make sure your system has awk and bash 4.0+ installed.  

Run the following command in your terminal to download and install pine.  

```shell
git clone https://github.com/suyashmahar/pine.git ~/ && echo "export pine=~/pine/pine" >> ~/.profile
```

Usage  
-----  
Pine allows extermely simple CLI for managing .gitignore files, to add a configuration just pass name of configuration as parameter to pine:
```shell
~ [my-git-rep] $ pine c java kotlin clojure
Adding configuration for c
Adding configuration for java
Adding configuration for kotlin
Adding configuration for clojure
```

To remove a existing configuration from `.gitignore` use `-r` or `--remove` switch:
```shell
~ [my-git-rep] $ pine -r c java # Removes configuration for 'c' and 'java' from .gitignore file
Removing configuration for c
Removing configuration for java
```

Pine uses .gitignore files provided by GitHub, these files are pereodically updated. To update your local copy of gitignore files use `-u` or `--update` switch:
```shell
~ [my-git-rep] $ pine -u
```
Uninstallation
--------------
Simply delete `~/pine` directory and remove line `export pine=~/pine/pine` from `~/.profile` using your favourite text editor.  

