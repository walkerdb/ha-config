#!/bin/bash

echo 'stopping home assistant...'
sudo systemctl stop home-assistant.service >&2

echo 'installing updates...'
sudo python3.6 -m pip install --upgrade homeassistant >&2
hass --script check_config >&2

echo 'starting home assistant...'
sudo systemctl start home-assistant.service >&2

echo 'done! hass is starting now.'
