# Example HTML element to extract attributes from
element = '<button id="submit" class="btn btn-primary">Submit</button>'


def extract_attributes(element):
    """
    Extracts HTML attributes and their values from a given HTML tag string.

    Parameters:
        element (str): The HTML element as a string (e.g., '<button id="submit" class="btn btn-primary">Submit</button>').

    Returns:
        list: A list of attribute-value pairs in string form, e.g. ['id, submit', 'class, btn btn-primary'].

    Steps:
        1. Remove angle brackets (<, >, /) to isolate the content of the tag.
        2. Split the tag content by double quotes to separate attributes and values.
        3. Extract attribute names (e.g., id, class) and their corresponding values.
        4. Store each pair in a clean list and return it.
    """

    retur = []   # list to hold attribute-value pairs
    char = '"'   # delimiter for splitting attribute values

    # Clean the tag and split by double quotes to isolate attribute values
    element = element.replace("<", "").replace(">", "").replace("/", "").split('"')

    # The first part (before the first quote) contains the tag name and first attribute
    element[0] = element[0].split(" ")[1]  # extract the first attribute name after the tag name

    # Loop through each split part to find attributes that contain '='
    for i, elem in enumerate(element):
        if "=" in elem:
            first = elem.replace("=", "").strip()  # attribute name
            last = " " + element[i + 1]            # attribute value
            retur.append(f"{first},{last}")        # store pair as string "attribute,value"

    # Return the final list of extracted attributes
    return retur


# Example usage:
print(extract_attributes(element))
