#!/bin/bash

<< task 
Deploy a Django App
nd handle code for errors
task

code_clone() {
	echo "Cloning the App..."
	git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirements() {
	echo "Installing dependencies..."
	sudo apt-get install docker.io nginx -y	
}

required_restarts() {
	sudo systemctl enable docker
	sudo systemctl enable nginx
}

deploy() {
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "********* DEPLOYMENT STARTED *********"
code_clone
install_requirements
required_restarts 
deploy

echo "********* DEPLOYMENT DONE *********"

