#!/bin/bash

echo "Content-Type: text/html"
echo

m4 -D_CONTENT="$(cat ../handlers/ls.sock)" -D_TITLE="My View" -D_HEADING="Snakes!" ../templates/preformatted.html
