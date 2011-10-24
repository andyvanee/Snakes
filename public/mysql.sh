#!/bin/bash

echo "Content-Type: text/html"
echo

# Read from a handler and use m4 as a templating engine

m4 -D_CONTENT="$(cat ../handlers/mysqlpage.sock)" -D_TITLE="MySQL View" -D_HEADING="Snakes!" ../templates/preformatted.html
