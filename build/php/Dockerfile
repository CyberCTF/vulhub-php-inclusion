# Vulhub's php/inclusion (in app/) runs vulhub/php:7.1.3-apache with ./www mounted on
# /var/www/html. Isoloom has no bind mounts, so this image copies the same folder to the same
# place. Nothing else differs.
FROM vulhub/php:7.1.3-apache
COPY app/www/ /var/www/html/
