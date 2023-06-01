#!/usr/bin/env bash
cd /home/dockers/cooltura
git pull https://{$USER}:{$PASSWORD}@github.com{$REPOSITORY}
sudo docker exec -i production_coolturate_php composer install
sudo docker exec -i production_coolturate_php drush cim
sudo docker exec -i production_coolturate_php drush updb -y
sudo docker exec -i production_coolturate_php drush cr

