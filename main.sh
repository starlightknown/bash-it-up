# main.sh
#!/bin/bash

# Import the display_pet and update_status functions
source display_pet.sh
source update_status.sh

# Initialize the pet's health and hunger levels
health=100
hunger=0

# Loop to run the virtual pet
while true; do
  # Display the pet's status
  clear
  echo "Health: $health%"
  echo "Hunger: $hunger%"
  display_pet

  # Display menu options
  echo "1. Feed"
  echo "2. Play"
  echo "3. Sleep"
  echo "4. Quit"

  # Read user input
  read -p "Enter your choice: " choice

  # Process user input
  case $choice in
    1) 
      feed
      ;;
    2) 
      play
      ;;
    3) 
      sleep
      ;;
    4) 
      exit 0
      ;;
    *) 
      echo "Invalid choice"
      ;;
  esac

  # Update the pet's status
  update_status
  
  # Check if the pet has died
  if [ $health -le 0 ]; then
    clear
    echo "Your pet has died."
    exit 1
  fi

  # Sleep for 1 second
  sleep 1
done
