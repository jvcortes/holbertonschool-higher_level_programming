#!/bin/bash
# Displays the allowed HTTP methods from an URL using curl.
curl -sI "$1" | grep -oPi 'Allow: \K[A-Z, ]+'  
