# ------------------------------------------------------------
# Problem: Counting Cards
# Difficulty: Easy
# ------------------------------------------------------------
#
# Background:
# A standard deck of playing cards contains 52 unique cards.
# There are 13 ranks (Ace through King) across 4 suits.
#
# ------------------------------------------------------------
# Task:
# Given an integer representing the number of cards to pick
# from the deck, return the total number of *unique combinations*
# possible when choosing that many cards.
#
# Important:
# - Order does NOT matter.
#   (Picking card A then card B is the same as picking card B then card A)
# - This is a combinations problem, not a permutations one.
#
# ------------------------------------------------------------
# Formula Used:
# C(n, k) = n! / (k! * (n - k)!)
# Where:
#   n = total items (52 cards)
#   k = number of cards chosen
#   ! = factorial (product of all positive integers up to n)
#
# ------------------------------------------------------------
# Example Input and Output:
#
# Input: 52
# Output: 1
# Explanation: There is only one way to choose all 52 cards.
#
# Input: 2
# Output: 1326
# Explanation: There are 1326 unique 2-card combinations in a 52-card deck.
#
# ------------------------------------------------------------
# Steps:
# 1️⃣ Import the math module to access the factorial function.
# 2️⃣ Use the combination formula:
#     52! / (cards! * (52 - cards)!)
# 3️⃣ Return the result.
#
# ------------------------------------------------------------

def combinations(cards):
    import math  # Step 1: Import the math library for factorial calculation.

    # Step 2: Apply the combination formula.
    # 52 choose 'cards' → total number of ways to pick 'cards' from 52.
    return (math.factorial(52) / 
            (math.factorial(cards) * math.factorial(52 - cards)))

# ------------------------------------------------------------
# End of Script
# ------------------------------------------------------------
