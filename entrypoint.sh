#!/bin/sh

fork=$FORK_URL
block=$FORK_BLOCK_NUMBER

args=""

if [ -n "$fork" ]; then
  args="--fork-url $fork"
fi

if [[ $block != "" ]]; then
  args="$args --fork-block-number $block"
fi

if [[ $impersonate != "" ]]; then
  args="$args --impersonate $impersonate"
fi


anvil $args
