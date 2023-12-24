# Use an official PHP runtime as a parent image
FROM php:7.4-cli

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY game.php /usr/src/app

# Make port 80 available to the world outside this container
# (This is not necessary for CLI applications but included for consistency)
EXPOSE 80

# CMD is the default command to run when the container starts
CMD ["php", "-S", "0.0.0.0:80", "./game.php"]

