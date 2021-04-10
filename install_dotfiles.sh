DOTFILE_DIR=$1

# Which dotfiles to install
files="bashrc gitconfig inputrc pre-commit-config.yaml tmux.conf tmux vimrc zshenv zshrc"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${DOTFILE_DIR}/.${file} ${HOME}/.${file}
done

# Make sure the conda paths are correct in zshrc
conda init zsh
