#!/bin/sh

./generate.sh sonos-cli | \
    sed -e 's/desc "Shiny new formula"/desc "Strava Command-Line Tools"/g' \
        -e 's|false|system "#{bin}/sonos", "--version"|g' | tee ../Formula/sonos-cli.rb