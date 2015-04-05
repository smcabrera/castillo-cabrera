Other than these dotfiles your development laptop should include a few other things

- thoughtbot/laptop

There's a script you can find on github called thoughtbot/laptop--this has all the software you'll need to get up and running. Run the script, wait 15 minutes and your rails dev environment is all set to go.

Forget the above. For one it doesn't support linux anymore. Any for another we're already putting together an ansible playbook that will set up our dev environment. It's not completely done yet, but when it is it should basically be a quick bootstrap new dev setup script, laid out in a sensible way through the use of ansible configuration.

- laptop.local

Besides these defaults, I've defined some gems and programs that I like in laptop.local, which should all be installed right afterward
Eventually I'd like to separate this out into a script and just run that upon getting a new laptop


- Fish

Go install the fish shell. Seems really cool from the minimal playing around with it I've done. At some point I'd like to switch over to Xiki, but it seems a bit complicated to setup for the time being.
http://hackercodex.com/guide/install-fish-shell-mac-ubuntu/

- Powerline

Make vim, tmux and bash and zsh give you extra information and look really nice
http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin

Go ahead and install this one for use with fish, which isn't supported by the above (as far as I know)
https://github.com/milkbikis/powerline-shell

First get all the software you need with thoughtbot's "laptop" script, their recipe for the perfect rails development laptop
bash <(curl -s https://raw.githubusercontent.com/thoughtbot/laptop/master/mac) 2>&1 | tee ~/laptop.log
- Set up zsh with ohmyzsh

Follow

curl -L http://install.ohmyz.sh | sh
Make sure rbenv is installed. If it isn't install it following these instructions
https://github.com/sstephenson/rbenv
and also be sure to install ruby-build so that you can use rbenv to install rubies
https://github.com/sstephenson/ruby-build#readme

- Make sure to add the path for rbenv to the path if it's not already there

- Go to the github page for vundle and set up vundle for vim

