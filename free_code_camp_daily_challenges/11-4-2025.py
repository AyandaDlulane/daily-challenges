** start of main.py **

def image_search(images, term):

    images_f = []
    for i in images:
        striped = i.lower().replace(term.lower(),"")

        if i.lower() != striped:
            images_f.append(i)

    return images_f

** end of main.py **
