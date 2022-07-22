"""
Lotto
@author: GK
"""


import random

draw = []

for _ in range(7):
    draw.append(random.randint(1, 60))    
  
print(draw)

#Probability in 1,000,000,000 (billion)
prob = round((1/59)**6*1e9, 5)

print(f'The probability of getting {draw} is {prob}.')

years = round(prob**(-1), 0)

print(f'You have to play {years} billion years to win the lottery.')