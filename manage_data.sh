#!/bin/bash

echo "What operation on the data you'd like to perform? (add/delete)"
read operation

if [ $operation == 'add' ]
then
   source scripts/add_data.sh
fi

if [ $operation == 'delete' ]
then
   source scripts/remove_data.sh
fi





