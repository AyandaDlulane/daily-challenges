** start of main.py **

def verify(message, key, signature):
    import string

    assc = string.ascii_lowercase + string.ascii_uppercase

    
    let = {}
    for i,w in enumerate(assc):
 

      let.update({w:i+1})

    message_score = 0
    for j in message:

        if j in assc:
           message_score += let[j]

    key_score = 0
    for k in key:

        if k in assc:
           key_score += let[k]



    return (message_score+key_score) == signature

** end of main.py **
