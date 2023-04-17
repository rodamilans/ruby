# utilities install 
echo "### utilities install  ###"
apt  update
apt install vim -y
apt install git -y


# nginx install
echo "### nginx install ###"
apt install nginx -y
service nginx start

# rvm and ruby install
echo "### rvm and ruby install ### "
apt install gpg -y
apt install curl -y
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
echo "source /usr/local/rvm/scripts/rvm" >> /etc/profile
rvm install 3.0.0

# puma and sinatra install
echo "### rvm and ruby install ### "
gem install bundler
gem install puma
gem install sinatra

# deploy app
git clone https://github.com/rodamilans/ruby.git
cd ruby/01-puma_sinatra/
ruby app_puma.rb



