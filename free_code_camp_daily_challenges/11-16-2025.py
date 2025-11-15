# ------------------------------------------------------------
# Problem: Greatest Common Divisor (GCD)
# Difficulty: Easy
# ------------------------------------------------------------
#
# Background:
# The GCD of two integers is the largest number that divides 
# both integers evenly (without a remainder).
#
# ------------------------------------------------------------
# Task:
# Given two positive integers x and y, return their greatest 
# common divisor.
#
# ------------------------------------------------------------
# Example Input and Output:
#
# Input: x = 4, y = 6
# Output: 2
# Explanation:
# - Divisors of 4: 1, 2, 4
# - Divisors of 6: 1, 2, 3, 6
# - The largest number in both sets: 2
#
# ------------------------------------------------------------
# Steps of Algorithm:
# 1️⃣ Check if x and y are equal. If so, return x (or y).
# 2️⃣ Initialize two variables:
#     - current: to iterate through possible divisors starting at 1
#     - ans: to store the largest common divisor found so far
# 3️⃣ Loop indefinitely:
#     - If current divides both x and y evenly, update ans
#     - If current reaches x or y, return ans
#     - Increment current by 1
#
# ------------------------------------------------------------

def gcd(x, y):
    
    # Step 1: If both numbers are equal, their GCD is the number itself
    if x == y:
        return x

    # Step 2: Initialize variables
    current, ans = 1, 1

    # Step 3: Iterate through possible divisors
    while True:

        # If current divides both numbers evenly, update ans
        if x % current == 0 and y % current == 0:
            ans = current

        # If we have reached either number, return the last found GCD
        elif x == current or y == current:
            return ans
        
        # Increment current to check next possible divisor
        current += 1

# ------------------------------------------------------------
# End of Script
# ------------------------------------------------------------
