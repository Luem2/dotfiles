# Luem2 Dotfiles configuration

This is my configuration, copy and use it by your risk.
When I format my computer or I am in another computer, I clone this repository, I stand on the root and I execute the command `stow */` to create symbolic links, and thus to have my services with their respective configurations.

Or if you wish, you can run the stow command next to the name of the folder you want to create the symbolic link.
For example: `stow zsh`. This will take the `zsh` folder as if it were the home directory and copy according to the structure defined in it. I hope I have explained XD

## Important tip
I had to put this repository in the home directory, because I had it in the `$HOME/development` directory and it didn't work. I didn't even get the error output, it just failed silently.
