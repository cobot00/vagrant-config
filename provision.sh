mkdir -p /home/vagrant/test

sudo apt-get install -y g++ make git build-essential libssl-dev libffi-dev libreadline-dev zlib1g-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev libpq-dev

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

source ~/.bash_profile

rbenv install 2.4.1
rbenv rehash
rbenv global 2.4.1


gem update --system
gem install bundler
gem install pg -v '~> 0.20.0'
gem install rails --version='~> 5.0.0' --no-ri --no-rdoc
