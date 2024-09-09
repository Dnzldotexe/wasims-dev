#!/bin/bash

# Copy Environment Variables
cp .env.example .env

# Install Composer Dependencies
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php83-composer:latest \
    composer install --ignore-platform-reqs

# Run Sail in the Background
./vendor/bin/sail up -d
sleep 15

# Run Database Migrations
./vendor/bin/sail php artisan migrate

# Install React using Laravel Breeze
./vendor/bin/sail composer require laravel/breeze --dev
./vendor/bin/sail php artisan breeze:install react
./vendor/bin/sail npm install

# Install Tailwind CSS
./vendor/bin/sail npm install -D tailwindcss postcss autoprefixer
./vendor/bin/sail npx tailwindcss init -p

# Compile Assets
./vendor/bin/sail npm run dev

# Add an Alias
sudo echo "alias sail='./vendor/bin/sail'" >> ~/.bashrc
source ~/.bashrc
