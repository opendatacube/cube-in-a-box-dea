#!/usr/bin/env bash
start=2018-01-01
end=2019-05-01
while ! [[ $start > $end ]]; do
    echo $start
    if [ $(uname) = 'Darwin' ]; then
      start=$(date -j -v+1d -f %Y-%m-%d $start +%Y-%m-%d)
    elif [ $(uname) = 'Linux' ]; then
      start=$(date -I -d "$start + 1 day")
    fi
done
