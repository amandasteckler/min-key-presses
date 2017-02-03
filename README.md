# Minimum Key Presses

Program that creates a class called MinKeyPresses. By calling the optimized_keys function on an instance of the class, it returns a keypad layout optimized for the least amount of key presses needed to type out the instance's passed in string.

Example:

tix = MinKeyPresses.new("Tickets are awesome!")

p tix.optimized_keys

**Output:** {2=>["e", "o"], 3=>["a", "w"], 4=>["t", "k"], 5=>["s"], 6=>["c"], 7=>["i"], 8=>["m"], 9=>["r"]}
