#!/bin/bash

echo "Content-Type: text/html"
echo

# Somewhat contrived example. Push some content to echo.sock
# then read it later with another command

echo "This is some content" > ../handlers/echo.sock

m4 -D_CONTENT="$(cat ../handlers/echo.sock)" -D_TITLE="My View" -D_HEADING="Snakes!" ../templates/preformatted.html
