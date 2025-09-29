#!/bin/bash

echo 'Список сетевых интерфейсов:'
nmcli device status 

echo 'Активные зоны фаервола:'
firewall-cmd --get-active-zones
