#!/bin/sh

./generate.sh strava-cli | \
    sed -e 's/desc "Shiny new formula"/desc "Strava Command-Line Tools"/g' \
        -e 's|false|system "#{bin}/strava", "--version"|g' | tee ../Formula/strava-cli.rb