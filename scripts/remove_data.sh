#!/bin/bash

echo "What database you want to remove data from?"
read db

echo "What table you want to remove data from?"
read table


echo "Enter the ID"
read id

sudo -u postgres -H -- psql -d $db -c "DELETE FROM $table WHERE id = $id";
sudo -u postgres -H -- psql -d $db -c "SELECT * FROM $table";
