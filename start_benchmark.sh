#!/bin/bash

# Function to pull the Docker image
pull_image() {
    echo "Pulling Docker image..."
    docker pull index.docker.io/akhilesh99/benchmark:latest
}

# Function to start the Docker container using docker-compose
start_container() {
    echo "Starting Docker container..."
    docker-compose up -d
}

# Function to view logs interactively
view_logs() {
    echo "Viewing logs..."
    docker-compose logs -f questions
}

# Main script logic
echo "Select an option:"
echo "1. Pull Docker image"
echo "2. Start Docker container"
echo "3. View logs"
echo "4. Exit"

read -p "Enter your choice [1-4]: " choice

case $choice in
    1)
        pull_image
        ;;
    2)
        start_container
        ;;
    3)
        view_logs
        ;;
    4)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac
