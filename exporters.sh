#!/bin/bash

cd /home/admin/monitoring
docker-compose -f docker-compose.exporters.yml up -d
