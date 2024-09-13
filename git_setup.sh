echo "Type in your first and last name (no accent or special characters - e.g. 'ç'): "
read full_name

echo "Type in your email address (the one used for your GitHub account): "
read email

git config --global user.email $email
git config --global user.name $full_name

# Add and commit changes
git add .
git commit --message "My identity for @lewagon in the gitconfig"

# Use Personal Access Token for authentication
echo "Type in your GitHub Personal Access Token: "
read -s pat  # -s flag hides the input for security

git remote set-url origin https://$GITHUB_USERNAME:$pat@github.com/$GITHUB_USERNAME/dotfiles.git
git push origin master

git remote add upstream git@github.com:lewagon/dotfiles.git

echo "👌 Awesome, all set."