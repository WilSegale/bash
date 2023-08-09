#!/bin/bash

typewriter_effect() {
  text=$1
  delay=$2

  for (( i=0; i<${#text}; i++ )); do
    printf "%c" "${text:$i:1}"
    sleep "$delay"
  done

  echo
}

# Example usage
typewriter_effect "This is a typewriter effect in Bash." 0.05

