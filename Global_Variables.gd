# Add variables that are needed by multiple scripts here (ex. Money)
extends Node

var deceleration = 5.0 # Defines deceleration of bullets over time (if you're using a rigidbody2D you can use the damp value under the Linear tab instead

var money = 100000.0 # Defines the players money value (default value starts at $10)

var Coin_Variant = 3  # Determines the coin variant the user has | 0: Penny, 1: Nickel, 2: Dime, 3: Quarter

var Dollar_Variant = 3 # Determines the dollar variant the user has | 0: Washington, 1: Lincoln, 2: Jackson, 3: Grant

var Check_Variant = 3 # Determines the check variant the user has | 0: $100 Check, 1: $200 Check, 2: $500 Check, 3: $1000 CHeck

# Shot health calculation function
