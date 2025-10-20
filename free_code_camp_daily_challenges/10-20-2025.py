def calculate_tips(meal_price, custom_tip):
    """
    Calculates three types of tips based on a given meal price:
    - 15% tip (standard restaurant tip)
    - 20% tip (generous tip)
    - A custom tip entered by the user

    Parameters:
        meal_price (str): The meal cost as a string, including a dollar sign (e.g., "$10.00").
        custom_tip (str): The custom tip as a string, including a percent sign (e.g., "25%").

    Returns:
        list: A list of strings containing three tip amounts formatted with '$' and two decimals.
              Example: ['$1.50', '$2.00', '$2.50']

    Example:
        >>> calculate_tips("$10.00", "25%")
        ['$1.50', '$2.00', '$2.50']
    """

    # Step 1: Convert the string meal price (e.g. "$10.00") into a float (10.00)
    float_price = float(meal_price.strip("$"))  # Removes the "$" symbol and converts to float

    # Step 2: Convert the custom tip string (e.g. "25%") into a decimal (0.25)
    float_tip = float(custom_tip.strip("%")) / 100  # Removes "%" and divides by 100

    # Step 3: Calculate each tip amount
    custom_tip = round(float_price * float_tip, 2)  # Custom tip (based on user input)
    fftn_tip = round(float_price * 0.15, 2)         # Default 15% tip
    twnty_tip = round(float_price * 0.20, 2)        # Default 20% tip

    # Step 4: Format each value as currency (e.g. "$2.50") and store in a list
    retur = [
        "$" + f"{fftn_tip:.2f}",
        "$" + f"{twnty_tip:.2f}",
        "$" + f"{custom_tip:.2f}"
    ]

    # Step 5: Return the list of tip values
    return retur


# Example usage and output demonstration
print(calculate_tips("$10.00", "25%"))
