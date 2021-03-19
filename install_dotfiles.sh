HOME_DIR=$1
DOTFILE_DIR=$2

# Which dotfiles to install
files=(bashrc gitconfig inputrc pre-commit-config.yaml tmux.conf tmux vimrc zshrc)

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${DOTFILE_DIR}/.${file} ${HOME_DIR}/.${file}
done


