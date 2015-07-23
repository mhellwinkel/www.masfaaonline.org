# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.synced_folder ".", "/home/vagrant/jekyll"

    # install packages as root
    # list is from https://gorails.com/setup/ubuntu/14.04
    config.vm.provision 'shell', privileged: true, inline: <<-SHELL
        apt-get update -y
        apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs npm
    SHELL

    # install latest rbenv
    # modified from https://gist.github.com/nruth/d99f3395e46678585614
    config.vm.provision 'shell', privileged: false, inline: <<-SHELL
        if cd ~/.rbenv ; then
            echo 'rbenv already downloaded'
        else
            git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
        fi

        if cd ~/.rbenv/plugins/ruby-build ; then
            echo 'ruby-build already downloaded'
        else
            git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
        fi

        RBENV_PATH='export PATH="$HOME/.rbenv/bin:$PATH"'
        if grep -q "$RBENV_PATH" ~/.bash_profile ; then
            echo 'rbenv path already in .bash_profile'
        else
            echo $RBENV_PATH >> ~/.bash_profile
        fi

        RBENV_INIT='eval "$(rbenv init -)"'
        if grep -q "$RBENV_INIT" ~/.bash_profile ; then
            echo 'rbenv init already in .bash_profile'
        else
            echo $RBENV_INIT >> ~/.bash_profile
        fi

        if cd ~/.rbenv/plugins/rbenv-gem-rehash ; then
            echo 'rbenv-gem-rehash already downloaded'
        else
            git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
        fi
    SHELL

    # install ruby
    config.vm.provision 'shell', privileged: false, inline: <<-SHELL
        rbenv install 2.2.2
        rbenv global 2.2.2
    SHELL

    # there should be a Gemfile to install the github-pages gem
    config.vm.provision 'shell', privileged: false, inline: <<-SHELL
        gem install bundler
        cd ~/jekyll
        bundle install
    SHELL

end
