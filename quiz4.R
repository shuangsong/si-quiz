#question1
### Question 1
# A pharmaceutical company is interested in testing a potential blood pressure lowering medication. Their first examination 
# considers only subjects that received the medication at baseline then two weeks later. The data are as follows (SBP in mmHg)

data<-data.frame(col1=c(140,138,150,148,135), col2=c(132,135,151,146,130))
data
t.test(data$col1-data$col2)
#0.086

#question2
### Question 2
# A sample of 9 men yielded a sample average brain volume of 1,100cc and a standard deviation of 30cc. What is the complete set 
# of values of ??actual mean that a test of H0:??=??0 would fail to reject the null hypothesis in a two sided 5% Students t-test?

miu<-1100
s<-30
n<-9
alpha<-0.05

ts<-qt(1-alpha/2, n-1)
miu+c(-1,1)*s*ts/sqrt(n)
#1077 1123

#question3
### Question 3
# Researchers conducted a blind taste test of Coke versus Pepsi. Each of four people was asked which of two blinded drinks 
# given in random order that they preferred. The data was such that 3 of the 4 people chose Coke. Assuming that this sample is 
# representative, report a P-value for a test of the hypothesis that Coke is preferred to Pepsi using a one sided exact test.

library(stats)
binom.test(x = 3, n = 4, p = .5, alt = "greater")


#question4
### Question 4
# Infection rates at a hospital above 1 infection per 100 person days at risk are believed to be too high and are used as a 
# benchmark. A hospital that had previously been above the benchmark recently had 10 infections over the last 1,787 person days 
# at risk. About what is the one sided P-value for the relevant test of whether the hospital is *below* the standard?

pi0<-1/100
pi1<-10/1787
n<-1787

se<-sqrt(pi0*(1-pi0)/n)
z<-(pi1-pi0)/se
pnorm(z, lower.tail=TRUE)

#we want below, therefore it is 0.03

#question 5
# Suppose that 18 obese subjects were randomized, 9 each, to a new diet pill and a placebo. Subjects??? body mass indices (BMIs) 
# were measured at a baseline and again after having received the treatment or placebo for four weeks. The average difference 
# from follow-up to the baseline (followup - baseline) was ???3 kg/m2 for the treated group and 1 kg/m2 for the placebo group. 
# The corresponding standard deviations of the differences was 1.5 kg/m2 for the treatment group and 1.8 kg/m2 for the placebo 
# group. Does the change in BMI appear to differ between the treated and placebo groups? Assuming normality of the underlying 
# data and a common population variance, give a pvalue for a two sided t test.

n<-9
alpha<-0.05
ts<-qt(1-alpha, n-1)
pt(ts, n-1, lower.tail=FALSE)

#question6
# Brain volumes for 9 men yielded a 90% confidence interval of 1,077 cc to 1,123 cc. Would you reject in a two sided 5%
# hypothesis test of H0:??=1,078?

#would not reject

#question7
# Researchers would like to conduct a study of 100 healthy adults to detect a four year mean brain volume loss of .01 mm3. 
# Assume that the standard deviation of four year volume loss in this population is .04 mm3. About what would be the power of 
# the study for a 5% one sided test versus a null hypothesis of no volume loss?
power.t.test(100, 0.01, 0.04, type = "one.sample", alt = "one.sided")$power
#0.79

#question8
# Researchers would like to conduct a study of n healthy adults to detect a four year mean brain volume loss of .01 mm3. 
# Assume that the standard deviation of four year volume loss in this population is .04 mm3. About what would be the value of 
# n needded for 90% power of type one error rate of 5% one sided test versus a null hypothesis of no volume loss?

#140

#Question 9
# As you increase the type one error rate, ??, what happens to power?
#You will get larger power































