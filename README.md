# Ruby Getter Method Modification Bug

This repository demonstrates an uncommon bug in Ruby related to modifying the return value of a getter method.  In Ruby, getter methods simply return the value of an instance variable. Assigning a new value to the result of a getter method does not update the instance variable itself, potentially leading to unexpected behavior and difficult-to-debug issues.

## Bug Description
The example code shows a `MyClass` with a getter method (`value`).  Directly assigning a value to the result of the getter method (e.g., `my_object.value = 30`) does not modify the object's internal state.  The internal instance variable (`@value`) remains unchanged.

## How to Reproduce
Clone the repository and run the `bug.rb` file using a Ruby interpreter.

## Solution
The solution involves using a setter method to explicitly modify the instance variable.  The `bugSolution.rb` file demonstrates the correct approach.
