#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y nodejs npm git
sudo ln -s /usr/bin/nodejs /usr/bin/node
git clone https://github.com/orizohar/simple-webapp.git
cd simple-webapp
npm install
