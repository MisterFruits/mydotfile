# To be run from local folder !


targets=(".aliases" ".bashrc" ".git-completion.bash" ".gitconfig" ".gitignore" ".profile" ".prompt" ".pythonstartup.py" "bin" ".vim" ".vimrc")
for target in ${targets[*]}
do
    ln -fbs -t $HOME $PWD/$target
done
