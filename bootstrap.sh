# Install all needed packages for Jekyll
sudo apt-get update
sudo apt-get --yes --force-yes install ruby-full
sudo apt-get --yes install zlibc zlib1g-dev libxml2 libxml2-dev libxslt1.1 libxslt1-dev
sudo gem install jekyll bundler
# bundle config build.nokogiri --use-system-libraries


echo "Packages installed!"

# Run Jekyll
cd /vagrant && bundle install
cd /vagrant && bundle exec jekyll serve --host localhost --port 8000