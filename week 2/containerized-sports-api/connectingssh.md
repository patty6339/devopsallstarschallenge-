## How to Git Clone Using SSH

ssh-keygen -t ed25519 -C "your_email@example.com" #generate an ssh key pair
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519 #add ssh key to ssh agent
eval "$(ssh-agent -s)" #start ssh agent
cat ~/.ssh/id_ed25519.pub #copy public ssh key to clipboard and paste to github ssh keys
ssh -T git@github.com #verify ssh connection
