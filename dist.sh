#!/bin/bash

boot middleman -e build && rsync -avP target/* hinoki:/var/www/html/
