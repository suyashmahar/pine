Pine  
====  

Hassle free .gitignore file manager. Pine uses GitHub's existing gitignore [repository](https://github.com/github/gitignore) to manage your `.gitignore` files, allowing fast and easy .gitignore management.

Installation  
------------  
Before installing ensure that your system has git, awk and bash 4.0+ installed.  

Run the following command in your terminal to download and install pine.  

If you are using bash:
```shell
git clone https://github.com/suyashmahar/pine.git "$HOME/pine" && echo 'export PATH="$HOME/pine:$PATH"' >> "$HOME/.bashrc" && source "$HOME/.bashrc"
```

If you are using zsh:
```shell
git clone https://github.com/suyashmahar/pine.git "$HOME/pine" && echo 'export PATH="$HOME/pine:$PATH"' >> "$HOME/.zshrc" && source "$HOME/.zshrc"
```

Usage  
-----  
Pine uses extremely simple CLI for managing .gitignore files, to add a new configuration to your .gitignore file just pass the name of configuration as a parameter:
```shell
[my-git-rep] $ pine c java kotlin clojure # Install configuration for 'c', 'java', 'kotlin' and 'clojure' 
```

This would update the .gitignore file present in the same directory with new configurations.

To remove an existing configuration from `.gitignore` use `-r` or `--remove` switch:
```shell
[my-git-rep] $ pine -r c java # Removes configuration for 'c' and 'java' from .gitignore file
```

Pine uses .gitignore files provided by GitHub, these files are often updated to fix bugs or add a new pattern. To update your local copy of gitignore files use `-u` or `--update` switch:
```shell
[my-git-rep] $ pine -u # Updates local repository of GitHub's gitignore files
```

For complete help use `pine --help`.

Demo
----
[![asciicast](https://asciinema.org/a/LJLcFbJlf3AIXABJWSPZpsKq8.png)](https://asciinema.org/a/LJLcFbJlf3AIXABJWSPZpsKq8)

Uninstallation
--------------
Delete `~/pine` directory and remove the line `export PATH="$HOME/pine:$PATH"` from `~/.bashrc`.

Acknowledgment
--------------
Pine relies on following components:
* .gitignore collection by GitHub | [Github repository](https://github.com/github/gitignore)

# Contribution
Feel free to [file issues](https://github.com/suyashmahar/pine/issues) and submit [pull requests](https://github.com/suyashmahar/pine/pulls) - contributions are welcome.
