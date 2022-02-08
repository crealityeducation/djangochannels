#!/bin/bash

NAME="djchnnl-daphne"  # Name of the application
DJANGODIR=/Users/sahyadriingale/Automation/GitHub/djangochannel/djchnnl  # Django project directory
DJANGOENVDIR=/Users/sahyadriingale/Automation/GitHub/djangochannel/env  # Django project env

echo "Starting $NAME as `whoami`"

# Activate the virtual environment
cd $DJANGODIR
source $DJANGOENVDIR/bin/activate
# source /home/ubuntu/webapp/myproject/proj/.env
# export PYTHONPATH=$DJANGODIR:$PYTHONPATH

# Start daphne
exec ${DJANGOENVDIR}/bin/daphne -b 0.0.0.0 -p 8112 djchnnl.asgi:application
