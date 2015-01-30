
#question1
## question 1
#In a population of interest, a sample of 9 men yielded a sample average brain
#volume of 1,100cc and a standard deviation of 30c.
#What is a 95% Student's T confidence interval for the mean brain volume in this
#new population?
mean<-1100
sd<-30
n<-9
alpha<-0.05
ts<-qt(1- alpha /2, n - 1)
round(mean+c(-1,1)*sd*ts/sqrt(n))
#1077 1123

#question2
# A diet pill is given to 9 subjects over six weeks. The average difference in weight 
#(follow up - baseline) is -2 pounds. What would the standard deviation of the difference
#in weight have to be for the upper endpoint of the 95% T confidence interval 
# to touch 0?
mean<- -2
n<-9
alpha<0.05

ts<-qt(1- alpha /2, n - 1)
sd<- -mean*sqrt(n)/ts
sd
#2.6019

#question3
# In an effort to improve running performance, 5 runners were either given a protein supplement or placebo. Then, after a 
# suitable washout period, they were given the opposite treatment. Their mile times were recorded under both the treatment and 
# placebo, yielding 10 measurements with 2 per subject. The researchers intend to use a T test and interval to investigate the
# treatment. Should they use a paired or independent group T test and interval?

#paired intervals


#question4
# In a study of emergency room waiting times, investigators consider a new and the standard triage systems. To test the 
# systems, administrators selected 20 nights and randomly assigned the new triage system to be used on 10 nights and the 
# standard system on the remaining 10 nights. They calculated the nightly median waiting time (MWT) to see a physician. The 
# average MWT for the new system was 3 hours with a variance of 0.60 while the average MWT for the old system was 5 hours with 
# a variance of 0.68. Consider the 95% confidence interval estimate for the differences of the mean MWT associated with the 
# new system. Assume a constant variance. What is the interval? Subtract in this order (New System - Old System).

#95%
x_bar<-3 #new
y_bar<-5
x_var<-0.6 #new
y_var<-0.68
x_n<-10
y_n<-10
alpha<-0.05
sp2<-((x_n-1)*x_var+(y_n-1)*y_var)/(x_n+y_n-2)
sp<-sqrt(sp2)
x_bar-y_bar+c(-1,1)*sp*qt(1-alpha/2, x_n+y_n-2)*(1/x_n+1/y_n)^.5

#question 5
# Suppose that you create a 95% T confidence interval. You then create a 90% interval using the same data. What can be said 
# about the 90% interval with respect to the 95% interval?
#90%
x_bar<-3 #new
y_bar<-5
x_var<-0.6 #new
y_var<-0.68
x_n<-10
y_n<-10
alpha<-0.1
sp2<-((x_n-1)*x_var+(y_n-1)*y_var)/(x_n+y_n-2)
sp<-sqrt(sp2)
x_bar-y_bar+c(-1,1)*sp*qt(1-alpha/2, x_n+y_n-2)*(1/x_n+1/y_n)^.5
#narrower
# -2.620397 -1.379603


#question6
# To further test the hospital triage system, administrators selected 200 nights and randomly assigned a new triage system to 
# be used on 100 nights and a standard system on the remaining 100 nights. They calculated the nightly median waiting time (MWT
# ) to see a physician. The average MWT for the new system was 4 hours with a standard deviation of 0.5 hours while the average 
# MWT for the old system was 6 hours with a standard deviation of 2 hours. Consider the hypothesis of a decrease in the mean 
# MWT associated with the new treatment. What does the 95% independent group confidence interval with unequal variances suggest 
# vis a vis this hypothesis? (Because there's so many observations per group, just use the Z quantile instead of the T.)
x_bar<-6 #new
y_bar<-4
x_sd<-2 #new
y_sd<-.5
x_n<-100
y_n<-100
alpha<-0.05
sp2<-((x_n-1)*x_sd^2+(y_n-1)*y_sd^2)/(x_n+y_n-2)
sp<-sqrt(sp2)
x_bar-y_bar+c(-1,1)*sp*qt(1-alpha/2, x_n+y_n-2)*(1/x_n+1/y_n)^.5

#all above zero, new affective.
#1.593458 2.406542


#question7
# Suppose that 18 obese subjects were randomized, 9 each, to a new diet pill and a placebo. Subjects??? body mass indices (BMIs) 
# were measured at a baseline and again after having received the treatment or placebo for four weeks. The average difference 
# from follow-up to the baseline (followup - baseline) was ???3 kg/m2 for the treated group and 1 kg/m2 for the placebo group. 
# The corresponding standard deviations of the differences was 1.5 kg/m2 for the treatment group and 1.8 kg/m2 for the placebo 
# group. Does the change in BMI over the four week period appear to differ between the treated and placebo groups? Assuming 
# normality of the underlying data and a common population variance, calculate the relevant *90%* t confidence interval. 
# Subtract in the order of (Treated - Placebo) with the smaller (more negative) number first.\
x_bar<--3 #treated
y_bar<-1
x_sd<-1.5 #treated
y_sd<-1.8
x_n<-9
y_n<-9
alpha<-0.1
sp2<-((x_n-1)*x_sd^2+(y_n-1)*y_sd^2)/(x_n+y_n-2)
sp<-sqrt(sp2)
x_bar-y_bar+c(-1,1)*sp*qt(1-alpha/2, x_n+y_n-2)*(1/x_n+1/y_n)^.5



# -5.363579 -2.636421








