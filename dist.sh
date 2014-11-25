#!/bin/bash

grunt build && rsync -avP dist/* hinoki:/var/www/html/
