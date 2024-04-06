#!/bin/bash

echo "Fetching secrets from Vault"
username=$(vault read -field=username secret/app/config)
password=$(vault read -field=password secret/app/config)
echo "Got username: $username"
echo "Got password: $password"
