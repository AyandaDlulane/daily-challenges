** start of main.py **

def count_rectangles(width, height):
    
   ans = 0

   for i in range(1,width+1):
   
    for j in range(1,height+1):
      
      ans += (width - i+1) * (height - j +1)

   return ans
    

   

** end of main.py **
