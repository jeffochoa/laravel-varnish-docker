#!/bin/bash

supervisord -c /etc/supervisor/supervisord.conf

supervisorctl reread

supervisorctl update

supervisorctl start laravel-worker:*