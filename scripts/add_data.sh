#!/bin/bash


echo "What database you want to add the data to?"
read db

echo "What table you want to add the data to?"
read table

echo "Enter an ID"
read id

echo "Enter the first name"
read first_name

echo "Enter the last name"
read last_name

echo "Enter the role"
read role


sudo -u postgres -H -- psql -d $db -c "INSERT INTO $table (id, first_name, second_name, role) VALUES ('$id','$first_name', '$last_name', '$role')";
sudo -u postgres -H -- psql -d $db -c "SELECT * FROM $table";
                                                          


