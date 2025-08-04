#!/bin/bash

# Simple script to serve the Jekyll site locally
# Prerequisites: Ruby, Jekyll, and Bundler must be installed

echo "Starting the beekeeping website..."
echo "Prerequisites: Ruby, Jekyll, and Bundler must be installed"
echo ""

# Add user gem bin to PATH if it exists
if [ -d "$HOME/.local/share/gem/ruby/3.2.0/bin" ]; then
    export PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"
fi

# Check if bundle is available
if ! command -v bundle &> /dev/null; then
    echo "Error: Bundler is not installed. Please install it with: gem install bundler"
    echo "If you installed gems with --user-install, make sure ~/.local/share/gem/ruby/*/bin is in your PATH"
    exit 1
fi

# Install dependencies if needed
if [ ! -d "vendor/bundle" ]; then
    echo "Installing dependencies..."
    bundle config set --local path 'vendor/bundle'
    bundle install
fi

echo "Starting Jekyll server..."
echo "The site will be available at: http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --host 0.0.0.0 --port 4000