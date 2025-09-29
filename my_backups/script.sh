#!/bin/bash

DATE=$(date +%F_%H-%M-%S)
mkdir -p ~/my_backups
cp ~/.bashrc ~/my_backups/bashrc_$DATE
echo "Копирование прошло успешно!"
