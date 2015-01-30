
#Q1 
#Consider influenza epidemics for two parent heterosexual families. 
#Suppose that the probability is 17% that at least one of the parents has 
#contracted the disease. The probability that the father has contracted influenza is 
#12% while the probability that both the mother and father have contracted the disease
#is 6%. What is the probability that the mother has contracted influenza?

f<-0.12
both<-0.06
more_than_one<-0.17
m=more_than_one+both-f
m
#0.11

#Q2
#A random variable, X is uniform, a box from 0 to 1 of height 1. 
#(So that it's density is f(x)=1 for 0<x<1.) What is it's 75th percentile?
# 75th percentile of uniform PDF 1x1 box
pbeta(0.75, 1, 1) 

#0.75

#Q3
#You are playing a game with a friend where you flip a coin and if it comes up
#heads you give her X dollars and if it comes up tails she gives you Y dollars. 
#The probability that the coin is heads is p (some number between 0 and 1.) What has
#to be true about X and Y to make so that both of your expected total earnings is 0. 
#(The game would then be called "fair".)


#p=head
#1-p=tail
# 0 = p*X - (1-p)*Y
# X/Y = (1-p)/p


#Q4
#A density that looks like a normal density (but may or may not be exactly normal) 
#is exactly symmetric about zero. (Symmetric means if you flip it around zero it 
#looks the same.) What is its median?
#median of PDF symmetric about 0 = 0




