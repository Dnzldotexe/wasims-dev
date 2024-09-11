#!/bin/bash

# Map custom domain
# echo "0.0.0.0 wasims.apc.edu.ph" | sudo tee -a "/etc/hosts" > /dev/null

# Generate ssl certificate
# cd docker/nginx/ssl
# bash generate-keys.sh
# cd ../../..

# Copy environment variables
cp .env.example .env

# Install composer dependencies
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php83-composer:latest \
    composer install --ignore-platform-reqs

# Run sail in the background
./vendor/bin/sail up -d
sleep 15

# Run database migrations
./vendor/bin/sail php artisan migrate

# Install react using laravel breeze
./vendor/bin/sail composer require laravel/breeze --dev
./vendor/bin/sail php artisan breeze:install react
./vendor/bin/sail npm install

# Install tailwind
./vendor/bin/sail npm install -D tailwindcss postcss autoprefixer
./vendor/bin/sail npx tailwindcss init -p

# Compile assets
./vendor/bin/sail npm run dev

# Add an alias
# echo "alias sail='./vendor/bin/sail'" >> ~/.bashrc
# source ~/.bashrc
