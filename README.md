## About

This is the small `~/.zshrc` file I use on Mac and Linux.
Use at your own risk.

## Quick start

0. Install zsh and set as login shell.

    On Ubuntu do:
    ```
    $ sudo apt-get install zsh
    $ chsh -s /usr/bin/zsh
    ```

    On Mac OS X do:
    ```
    $ brew install zsh
    $ chsh -s /usr/local/bin/zsh
    ```

1. Clone this repository.
    
    ```
    $ git clone https://github.com/mhubig/zsh.git ~/.zsh
    ```

2. Initialize the submodules.

    ```
    $ cd ~/.zsh
    $ git submodule init
    $ git submodule update
    ```

3. Create the `~/.zshrc` and `~/.zprofile` links.
    
    ```
    $ ln -s ~/.zsh/zshrc ~/.zshrc
    $ ln -s ~/.zsh/zprofile ~/.zprofile
    ```

