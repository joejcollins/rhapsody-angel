# Beekeeping

Beekeeping notes and queen tracking for the apiary.

## Quick Start - Open in Browser

### Option 1: Using the serve script (Recommended)
If you have Ruby installed:
```bash
./serve.sh
```
Then visit <http://localhost:4000/>

### Option 2: Using Docker
```bash
docker compose up
```
Then visit <http://localhost:8080/>

### Option 3: Manual Jekyll setup
```bash
bundle install
bundle exec jekyll serve --host 0.0.0.0 --port 4000
```
Then visit <http://localhost:4000/>

## Detailed Installation Instructions

### Prerequisites
- Ruby 2.5 or higher
- Bundler gem

### Install Dependencies
```bash
bundle config set --local path 'vendor/bundle'
bundle install
```

### Run the Site
```bash
bundle exec jekyll serve --host 0.0.0.0 --port 4000
```

The site will be available at <http://localhost:4000/>

## Legacy Installation (WSL Ubuntu 18.04)

```bash
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.6.3
rbenv global 2.6.3
ruby -v

gem install jekyll 
gem install bundler
```