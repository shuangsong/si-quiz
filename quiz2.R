#question1: sigma^2/n

#question2:
#Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally
#distributed with a mean of 80 (mm Hg) and a standard deviation of 10. 
#About what is the probability that a random 35-44 year old has a DBP less than 70?
pnorm(70, mean=80, sd=10)
#answer: 16%

#question3:
#Brain volume for adult women is normally distributed with a mean of 
#about 1,100 cc for women with a standard deviation of 75 cc. About what 
#brain volume represents the 95th percentile?
qnorm(0.95, mean=1100, sd=75)
#answer:1223

#question4:
#Refer to the previous question. Brain volume for adult women is about 1,100
#cc for women with a standard deviation of 75 cc. Consider the sample mean of 100 
#random adult women from this population. Around what is the 95th percentile of the 
#distribution of that sample mean?
mean = 1100
n = 100
SD = 75
SE = SD/sqrt(n)
round(mean + (qnorm(0.95) * SE))
#1112

#question5:
#You flip a fair coin 5 times, about what's the probability of getting 4 or 5 heads?
choose(5,4)*0.5^5+choose(5,5)*0.5^5
#answer:19%

#question 6:

pnorm(1)-pnorm(-1)
pnorm(1)-(1-pnorm(1))
2*pnorm(1)-1

#0.68%

#question7:

mean(rnorm(1e08, mean=0.5, sd=sqrt(1/12)))
#0.5

#question8:
# The number of people showing up at a bus stop is assumed to be Poisson with a mean 
#of 5 people per hour. You watch the bus stop for 3 hours. About what's the probability
#of viewing 10 or fewer people?
ppois(10, lambda=3*5)

#answer:0.12




