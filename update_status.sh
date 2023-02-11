# update_status.sh
#!/bin/bash

# Function to update the pet's status
update_status() {
  health=$((health - 1))
  hunger=$((hunger + 2))
}

# Function to feed the pet
feed() {
  hunger=$((hunger - 10))
  if [ $hunger -lt 0 ]; then
    hunger=0
  fi
}

# Function to play with the pet
play() {
  health=$((health + 10))
  if [ $health -gt 100 ]; then
    health=100
  fi
  hunger=$((hunger + 10))
}

# Function to make the pet sleep
sleep() {
  health=$((health + 20))
  if [ $health -gt 100 ]; then
    health=100
  fi
  hunger=$((hunger + 20))
}

