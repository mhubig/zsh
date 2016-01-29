## About

This are the ZSH configuration files I use on Mac and Linux. They are now based on
the mighty [prezto](https://github.com/sorin-ionescu/prezto). Use at your own risk.

## Quick start

00. Install zsh and set as login shell.

    On Ubuntu do:

        $ sudo apt-get install zsh
        $ chsh -s /usr/bin/zsh

    On Mac OS X do:

        $ brew install zsh

    Then set the shell in the system preference pane, like here:
    ![alt text](http://i.stack.imgur.com/uF72p.png)

00. Clone this repository.

        $ git clone https://github.com/mhubig/zsh.git ~/.zsh

00. Clone the zgen.

        $ git clone https://github.com/tarjoilija/zgen.git ~/.zgen

00. Start ZSH and link the config files.

        $ zsh
        % zfiles=(zlogin zlogout zprofile zshenv zshrc)
        % for file in $zfiles; do
              ln -s "$HOME/.zsh/$file" "$HOME/.${file:t}"
          done

00. Make your own copy of the zlocal file.

        $ cp ~/.zsh/zlocal.example ~/.zsh/zlocal
        $ vim ~/.zsh/zlocal

00. Now restart your terminal!
