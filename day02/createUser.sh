#!/bin/bash

read -p "Enter Username: " name
echo "Name: $name"
sudo useradd -m $name
echo "New user added"
