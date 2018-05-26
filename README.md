# STARBOUND DOCKER

## How to run

This is a mostly empty container with the appropriate requirements to run the starbound server, as well as a script to fire it up.

You'll need to manually map a folder with the game files and configuration.

After building the docker file you can run the image for the first time with :

``` docker run -d -p=21025:21025 -v=/path/to/starbound/data:/server/starbound mthiel/starbound ```
