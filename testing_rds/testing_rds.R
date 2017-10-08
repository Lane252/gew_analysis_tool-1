# http://rstudio-pubs-static.s3.amazonaws.com/3369_998f8b2d788e4a0384ae565c4280aa47.html

rm(list=ls())

##########################################
getwd()
##########################################
## READ IN DATA FILES
#set working directory
setwd("C:\\Users\\botmechanic\\Google Drive\\Research main\\Projects\\Social Robot Research\\Statistical Analysis\\Testing period 2_3 Libby\\libby_tests_2\\RDS")

# Static
s_e1 = read.csv("csv/static/s_e1.csv", stringsAsFactors=FALSE)       
s_e2 = read.csv("csv/static/s_e2.csv", stringsAsFactors=FALSE)       
s_e3 = read.csv("csv/static/s_e3.csv", stringsAsFactors=FALSE)       
s_e4 = read.csv("csv/static/s_e4.csv", stringsAsFactors=FALSE)       
s_e5 = read.csv("csv/static/s_e5.csv", stringsAsFactors=FALSE)       
s_e6 = read.csv("csv/static/s_e6.csv", stringsAsFactors=FALSE)       
s_e7 = read.csv("csv/static/s_e7.csv", stringsAsFactors=FALSE)       
s_e8 = read.csv("csv/static/s_e8.csv", stringsAsFactors=FALSE)       
s_e9 = read.csv("csv/static/s_e9.csv", stringsAsFactors=FALSE)       

# Dynamic
d_e1 = read.csv("csv/dynamic/d_e1.csv", stringsAsFactors=FALSE)       
d_e2a = read.csv("csv/dynamic/d_e2a.csv", stringsAsFactors=FALSE)       
d_e2b = read.csv("csv/dynamic/d_e2b.csv", stringsAsFactors=FALSE)       
d_e3 = read.csv("csv/dynamic/d_e3.csv", stringsAsFactors=FALSE)       
d_e4 = read.csv("csv/dynamic/d_e4.csv", stringsAsFactors=FALSE)      
d_e5 = read.csv("csv/dynamic/d_e5.csv", stringsAsFactors=FALSE)       
d_e6 = read.csv("csv/dynamic/d_e6.csv", stringsAsFactors=FALSE)       
d_e7 = read.csv("csv/dynamic/d_e7.csv", stringsAsFactors=FALSE)      
d_e8 = read.csv("csv/dynamic/d_e8.csv", stringsAsFactors=FALSE)       

# Top and Low
# low
low_e1 = read.csv("csv/low_top/low_e1.csv", stringsAsFactors=FALSE)       
low_e2 = read.csv("csv/low_top/low_e2.csv", stringsAsFactors=FALSE)       
low_e3 = read.csv("csv/low_top/low_e3.csv", stringsAsFactors=FALSE)       
low_e4 = read.csv("csv/low_top/low_e4.csv", stringsAsFactors=FALSE)      
low_e5 = read.csv("csv/low_top/low_e5.csv", stringsAsFactors=FALSE)       
low_e6 = read.csv("csv/low_top/low_e6.csv", stringsAsFactors=FALSE)       
low_e7 = read.csv("csv/low_top/low_e7.csv", stringsAsFactors=FALSE)      
low_e8 = read.csv("csv/low_top/low_e8.csv", stringsAsFactors=FALSE)  
low_e9 = read.csv("csv/low_top/low_e9.csv", stringsAsFactors=FALSE)  

# top
top_e1 = read.csv("csv/low_top/top_e1.csv", stringsAsFactors=FALSE)       
top_e2 = read.csv("csv/low_top/top_e2.csv", stringsAsFactors=FALSE)       
top_e3 = read.csv("csv/low_top/top_e3.csv", stringsAsFactors=FALSE)       
top_e4 = read.csv("csv/low_top/top_e4.csv", stringsAsFactors=FALSE)      
top_e5 = read.csv("csv/low_top/top_e5.csv", stringsAsFactors=FALSE)       
top_e6 = read.csv("csv/low_top/top_e6.csv", stringsAsFactors=FALSE)       
top_e7 = read.csv("csv/low_top/top_e7.csv", stringsAsFactors=FALSE)      
top_e8 = read.csv("csv/low_top/top_e8.csv", stringsAsFactors=FALSE)  
top_e9 = read.csv("csv/low_top/top_e9.csv", stringsAsFactors=FALSE)  

# circular analysis
circl_s = read.csv("csv/circular_analysis/circ_analysis_s.csv", stringsAsFactors=FALSE)       
circl_d = read.csv("csv/circular_analysis/circ_analysis_d.csv", stringsAsFactors=FALSE)       
circl_l_t = read.csv("csv/circular_analysis/circ_analysis_low_top.csv", stringsAsFactors=FALSE)       

# remove na cells
s_e1 = na.omit(s_e1)
s_e2 = na.omit(s_e2)
s_e3 = na.omit(s_e3)
s_e4 = na.omit(s_e4)
s_e5 = na.omit(s_e5)
s_e6 = na.omit(s_e6)
s_e7 = na.omit(s_e7)
s_e8 = na.omit(s_e8)
s_e9 = na.omit(s_e9)

d_e1 = na.omit(d_e1)
d_e2a = na.omit(d_e2a)
d_e2b = na.omit(d_e2b)
d_e3 = na.omit(d_e3)
d_e4 = na.omit(d_e4)
d_e5 = na.omit(d_e5)
d_e6 = na.omit(d_e6)
d_e7 = na.omit(d_e7)
d_e8 = na.omit(d_e8)

# Top and Low
# low
low_e1 = na.omit(low_e1)   
low_e2 = na.omit(low_e2)      
low_e3 = na.omit(low_e3)       
low_e4 = na.omit(low_e4)      
low_e5 = na.omit(low_e5)    
low_e6 = na.omit(low_e6)       
low_e7 = na.omit(low_e7)      
low_e8 = na.omit(low_e8)  
low_e9 = na.omit(low_e9)  

# top
top_e1 = na.omit(top_e1)      
top_e2 = na.omit(top_e2)      
top_e3 = na.omit(top_e3)     
top_e4 = na.omit(top_e4)      
top_e5 = na.omit(top_e5)     
top_e6 = na.omit(top_e6)      
top_e7 = na.omit(top_e7)     
top_e8 = na.omit(top_e8)  
top_e9 = na.omit(top_e9)  

# PART I: Quadrant recognition  ##############################################################################################
##############################################################################################################################
##############################################################################################################################
##############################################################################################################################
##############################################################################################################################
# tabulate static quadrants
q_s_e1 = table(s_e1$Quadrant)
q_s_e2 = table(s_e2$Quadrant)
q_s_e3 = table(s_e3$Quadrant)
q_s_e4 = table(s_e4$Quadrant)
q_s_e5 = table(s_e5$Quadrant)
q_s_e6 = table(s_e6$Quadrant)
q_s_e7 = table(s_e7$Quadrant)
q_s_e8 = table(s_e8$Quadrant)
q_s_e9 = table(s_e9$Quadrant)

# tabulate dynamic quadrants
q_d_e1 = table(d_e1$Quadrant)
q_d_e2a = table(d_e2a$Quadrant)
q_d_e2b = table(d_e2b$Quadrant)
q_d_e3 = table(d_e3$Quadrant)
q_d_e4 = table(d_e4$Quadrant)
q_d_e5 = table(d_e5$Quadrant)
q_d_e6 = table(d_e6$Quadrant)
q_d_e7 = table(d_e7$Quadrant)
q_d_e8 = table(d_e8$Quadrant)

# tabulate lower face
q_low_e1 = table(low_e1$Quadrant)
q_low_e2 = table(low_e2$Quadrant)
q_low_e3 = table(low_e3$Quadrant)
q_low_e4 = table(low_e4$Quadrant)
q_low_e5 = table(low_e5$Quadrant)
q_low_e6 = table(low_e6$Quadrant)
q_low_e7 = table(low_e7$Quadrant)
q_low_e8 = table(low_e8$Quadrant)
q_low_e9 = table(low_e9$Quadrant)


# tabulate upper face
q_top_e1 = table(top_e1$Quadrant)
q_top_e2 = table(top_e2$Quadrant)
q_top_e3 = table(top_e3$Quadrant)
q_top_e4 = table(top_e4$Quadrant)
q_top_e5 = table(top_e5$Quadrant)
q_top_e6 = table(top_e6$Quadrant)
q_top_e7 = table(top_e7$Quadrant)
q_top_e8 = table(top_e8$Quadrant)
q_top_e9 = table(top_e9$Quadrant)

## to do 
## NE quadrants [happyness(e_1), content(e_2)]
# t-test -> static vs dynamic 
# Anova - full, top only, bottom only

## SE quadrants [awe(e_6), surprise(e_3) ]
# t-test -> static vs dynamic 
# Anova - full, top only, bottom only

## SW quadrants [sad(e_7), ]
# t-test -> static vs dynamic 
# Anova - full, top only, bottom only

## NW quadrants [fear(e_4), angry(e_5), disgust(e_8), ]
# t-test -> static vs dynamic 
# Anova - full, top only, bottom only
 


# PART II: Circular histogram of emotion recognition #########################################################################
##############################################################################################################################
##############################################################################################################################
##############################################################################################################################
##############################################################################################################################

library(circular)
library("scales")

# STATIC EMOTIONS
####################################################################
e_s_e1 = s_e1$Emotion.1
e_s_e2 = s_e2$Emotion.1
e_s_e3 = s_e3$Emotion.1
e_s_e4 = s_e4$Emotion.1
e_s_e5 = s_e5$Emotion.1
e_s_e6 = s_e6$Emotion.1
e_s_e7 = s_e7$Emotion.1
e_s_e8 = s_e8$Emotion.1
e_s_e9 = s_e9$Emotion.1

# remove 0's (no emotion) and 151 entries (other)
e_s_e1 = e_s_e1[e_s_e1 != 0]
e_s_e1 = e_s_e1[e_s_e1 != 151]
e_s_e2 = e_s_e2[e_s_e2 != 0]
e_s_e2 = e_s_e2[e_s_e2 != 151]
e_s_e3 = e_s_e3[e_s_e3 != 0]
e_s_e3 = e_s_e3[e_s_e3 != 151]
e_s_e4 = e_s_e4[e_s_e4 != 0]
e_s_e4 = e_s_e4[e_s_e4 != 151]
e_s_e5 = e_s_e5[e_s_e5 != 0]
e_s_e5 = e_s_e5[e_s_e5 != 151]
e_s_e6 = e_s_e6[e_s_e6 != 0]
e_s_e6 = e_s_e6[e_s_e6 != 151]
e_s_e7 = e_s_e7[e_s_e7 != 0]
e_s_e7 = e_s_e7[e_s_e7 != 151]
e_s_e8 = e_s_e8[e_s_e8 != 0]
e_s_e8 = e_s_e8[e_s_e8 != 151]
e_s_e9 = e_s_e9[e_s_e9 != 0]
e_s_e9 = e_s_e9[e_s_e9 != 151]

# count number of OTHER cells
len_static = length(s_e1$Emotion.1)
len_na_s_e1 = length(s_e1$Emotion.1) - length( s_e1$Emotion.1[s_e1$Emotion.1 != 151] )
len_na_s_e2 = length(s_e2$Emotion.1) - length( s_e2$Emotion.1[s_e2$Emotion.1 != 151] )
len_na_s_e3 = length(s_e3$Emotion.1) - length( s_e3$Emotion.1[s_e3$Emotion.1 != 151] )
len_na_s_e4 = length(s_e4$Emotion.1) - length( s_e4$Emotion.1[s_e4$Emotion.1 != 151] )
len_na_s_e5 = length(s_e5$Emotion.1) - length( s_e5$Emotion.1[s_e5$Emotion.1 != 151] )
len_na_s_e6 = length(s_e6$Emotion.1) - length( s_e6$Emotion.1[s_e6$Emotion.1 != 151] )
len_na_s_e7 = length(s_e7$Emotion.1) - length( s_e7$Emotion.1[s_e7$Emotion.1 != 151] )
len_na_s_e8 = length(s_e8$Emotion.1) - length( s_e8$Emotion.1[s_e8$Emotion.1 != 151] )
len_na_s_e9 = length(s_e9$Emotion.1) - length( s_e9$Emotion.1[s_e9$Emotion.1 != 151] )

# count number of NO EMOTION cells
len_0_s_e1 = length(s_e1$Emotion.1) - length( s_e1$Emotion.1[s_e1$Emotion.1 != 0] )
len_0_s_e2 = length(s_e2$Emotion.1) - length( s_e2$Emotion.1[s_e2$Emotion.1 != 0] )
len_0_s_e3 = length(s_e3$Emotion.1) - length( s_e3$Emotion.1[s_e3$Emotion.1 != 0] )
len_0_s_e4 = length(s_e4$Emotion.1) - length( s_e4$Emotion.1[s_e4$Emotion.1 != 0] )
len_0_s_e5 = length(s_e5$Emotion.1) - length( s_e5$Emotion.1[s_e5$Emotion.1 != 0] )
len_0_s_e6 = length(s_e6$Emotion.1) - length( s_e6$Emotion.1[s_e6$Emotion.1 != 0] )
len_0_s_e7 = length(s_e7$Emotion.1) - length( s_e7$Emotion.1[s_e7$Emotion.1 != 0] )
len_0_s_e8 = length(s_e8$Emotion.1) - length( s_e8$Emotion.1[s_e8$Emotion.1 != 0] )
len_0_s_e9 = length(s_e9$Emotion.1) - length( s_e9$Emotion.1[s_e9$Emotion.1 != 0] )
 

# calculate uncertainty
static_uncertainty = cbind( c(len_static - (len_na_s_e1+len_0_s_e1), len_na_s_e1, len_0_s_e1),
                            c(len_static - (len_na_s_e2+len_0_s_e2), len_na_s_e2, len_0_s_e2),
                            c(len_static - (len_na_s_e3+len_0_s_e3), len_na_s_e3, len_0_s_e3),
                            c(len_static - (len_na_s_e4+len_0_s_e4), len_na_s_e4, len_0_s_e4),
                            c(len_static - (len_na_s_e5+len_0_s_e5), len_na_s_e5, len_0_s_e5),
                            c(len_static - (len_na_s_e6+len_0_s_e6), len_na_s_e6, len_0_s_e6),
                            c(len_static - (len_na_s_e7+len_0_s_e7), len_na_s_e7, len_0_s_e7),
                            c(len_static - (len_na_s_e8+len_0_s_e8), len_na_s_e8, len_0_s_e8),
                            c(len_static - (len_na_s_e9+len_0_s_e9), len_na_s_e9, len_0_s_e9) )

# Create the bar chart.
colors <- c("green","orange","red")
emotions <- c("e1","e2","e3","e4","e5", "e6", "e7", "e8", "e9")
regions <- c("Emotion Identified", "Other", "No emotion")

par(xpd=TRUE, mar=par()$mar+c(0,0,0,7))
barplot(static_uncertainty,main = "Uncertainy Recognition: Static Emotions", names.arg = emotions, xlab = "emotions", ylab = "participants", col = colors)
axis(2, c(0,34) ) # extend y-axis
legend(11,34, regions, cex = 1, fill = colors)

# rescale values in range 0-2pi
e_s_e1 = rescale(e_s_e1, from=c(0,20), to= c(0, 2*pi))
e_s_e2 = rescale(e_s_e2, from=c(0,20), to= c(0, 2*pi))
e_s_e3 = rescale(e_s_e3, from=c(0,20), to= c(0, 2*pi))
e_s_e4 = rescale(e_s_e4, from=c(0,20), to= c(0, 2*pi))
e_s_e5 = rescale(e_s_e5, from=c(0,20), to= c(0, 2*pi))
e_s_e6 = rescale(e_s_e6, from=c(0,20), to= c(0, 2*pi))
e_s_e7 = rescale(e_s_e7, from=c(0,20), to= c(0, 2*pi))
e_s_e8 = rescale(e_s_e8, from=c(0,20), to= c(0, 2*pi))
e_s_e9 = rescale(e_s_e9, from=c(0,20), to= c(0, 2*pi))

# DYNAMIC EMOTIONS
####################################################################
e_d_e1 = d_e1$Emotion.1
e_d_e2a = d_e2a$Emotion.1
e_d_e2b = d_e2b$Emotion.1
e_d_e3 = d_e3$Emotion.1
e_d_e4 = d_e4$Emotion.1
e_d_e5 = d_e5$Emotion.1
e_d_e6 = d_e6$Emotion.1
e_d_e7 = d_e7$Emotion.1
e_d_e8 = d_e8$Emotion.1

# remove 0's (no emotion) and 151 entries (other)
e_d_e1 = e_d_e1[e_d_e1 != 0]
e_d_e1 = e_d_e1[e_d_e1 != 151]
e_d_e2a = e_d_e2a[e_d_e2a != 0]
e_d_e2a = e_d_e2a[e_d_e2a != 151]
e_d_e2b = e_d_e2b[e_d_e2b != 0]
e_d_e2b = e_d_e2b[e_d_e2b != 151]
e_d_e3 = e_d_e3[e_d_e3 != 0]
e_d_e3 = e_d_e3[e_d_e3 != 151]
e_d_e4 = e_d_e4[e_d_e4 != 0]
e_d_e4 = e_d_e4[e_d_e4 != 151]
e_d_e5 = e_d_e5[e_d_e5 != 0]
e_d_e5 = e_d_e5[e_d_e5 != 151]
e_d_e6 = e_d_e6[e_d_e6 != 0]
e_d_e6 = e_d_e6[e_d_e6 != 151]
e_d_e7 = e_d_e7[e_d_e7 != 0]
e_d_e7 = e_d_e7[e_d_e7 != 151]
e_d_e8 = e_d_e8[e_d_e8 != 0]
e_d_e8 = e_d_e8[e_d_e8 != 151]

# count number of OTHER cells
len_dynamic = length(d_e1$Emotion.1)
len_na_d_e1 = length(d_e1$Emotion.1) - length( d_e1$Emotion.1[d_e1$Emotion.1 != 151] )
len_na_d_e2a = length(d_e2a$Emotion.1) - length( d_e2a$Emotion.1[d_e2a$Emotion.1 != 151] )
len_na_d_e2b = length(d_e2b$Emotion.1) - length( d_e2b$Emotion.1[d_e2b$Emotion.1 != 151] )
len_na_d_e3 = length(d_e3$Emotion.1) - length( d_e3$Emotion.1[d_e3$Emotion.1 != 151] )
len_na_d_e4 = length(d_e4$Emotion.1) - length( d_e4$Emotion.1[d_e4$Emotion.1 != 151] )
len_na_d_e5 = length(d_e5$Emotion.1) - length( d_e5$Emotion.1[d_e5$Emotion.1 != 151] )
len_na_d_e6 = length(d_e6$Emotion.1) - length( d_e6$Emotion.1[d_e6$Emotion.1 != 151] )
len_na_d_e7 = length(d_e7$Emotion.1) - length( d_e7$Emotion.1[d_e7$Emotion.1 != 151] )
len_na_d_e8 = length(d_e8$Emotion.1) - length( d_e8$Emotion.1[d_e8$Emotion.1 != 151] )

# count number of NO EMOTION cells
len_0_d_e1 = length(d_e1$Emotion.1) - length( d_e1$Emotion.1[d_e1$Emotion.1 != 0] )
len_0_d_e2a = length(d_e2a$Emotion.1) - length( d_e2a$Emotion.1[d_e2a$Emotion.1 != 0] )
len_0_d_e2b = length(d_e2b$Emotion.1) - length( d_e2b$Emotion.1[d_e2b$Emotion.1 != 0] )
len_0_d_e3 = length(d_e3$Emotion.1) - length( d_e3$Emotion.1[d_e3$Emotion.1 != 0] )
len_0_d_e4 = length(d_e4$Emotion.1) - length( d_e4$Emotion.1[d_e4$Emotion.1 != 0] )
len_0_d_e5 = length(d_e5$Emotion.1) - length( d_e5$Emotion.1[d_e5$Emotion.1 != 0] )
len_0_d_e6 = length(d_e6$Emotion.1) - length( d_e6$Emotion.1[d_e6$Emotion.1 != 0] )
len_0_d_e7 = length(d_e7$Emotion.1) - length( d_e7$Emotion.1[d_e7$Emotion.1 != 0] )
len_0_d_e8 = length(d_e8$Emotion.1) - length( d_e8$Emotion.1[d_e8$Emotion.1 != 0] )

# calculate uncertainty
dynamic_uncertainty = cbind( c(len_dynamic - (len_na_d_e1+len_0_d_e1), len_na_d_e1, len_0_d_e1),
                            c(len_dynamic - (len_na_d_e2a+len_0_d_e2a), len_na_d_e2a, len_0_d_e2a),
                            c(len_dynamic - (len_na_d_e2b+len_0_d_e2b), len_na_d_e2b, len_0_d_e2b) ,
                            c(len_dynamic - (len_na_d_e3+len_0_d_e3), len_na_d_e3, len_0_d_e3),
                            c(len_dynamic - (len_na_d_e4+len_0_d_e4), len_na_d_e4, len_0_d_e4),
                            c(len_dynamic - (len_na_d_e5+len_0_d_e5), len_na_d_e5, len_0_d_e5),
                            c(len_dynamic - (len_na_d_e6+len_0_d_e6), len_na_d_e6, len_0_d_e6),
                            c(len_dynamic - (len_na_d_e7+len_0_d_e7), len_na_d_e7, len_0_d_e7),
                            c(len_dynamic - (len_na_d_e8+len_0_d_e8), len_na_d_e8, len_0_d_e8))

# Create the bar chart.
colors <- c("green","orange","red")
emotions <- c("e1","e2","e3","e4","e5", "e6", "e7", "e8", "e9")
regions <- c("Emotion Identified", "Other", "No emotion")

par(xpd=TRUE, mar=par()$mar+c(0,0,0,7))
barplot(dynamic_uncertainty,main = "Uncertainy Recognition: Dynamic Emotions", names.arg = emotions, xlab = "emotions", ylab = "participants", col = colors)
axis(2, c(0,34) ) # extend y-axis
legend(11,34, regions, cex = 1, fill = colors)

# dynamic rescale values in range 0-2pi
e_d_e1 = rescale(e_d_e1, from=c(0,20), to= c(0, 2*pi))
e_d_e2a = rescale(e_d_e2a, from=c(0,20), to= c(0, 2*pi))
e_d_e2b = rescale(e_d_e2b, from=c(0,20), to= c(0, 2*pi))
e_d_e3 = rescale(e_d_e3, from=c(0,20), to= c(0, 2*pi))
e_d_e4 = rescale(e_d_e4, from=c(0,20), to= c(0, 2*pi))
e_d_e5 = rescale(e_d_e5, from=c(0,20), to= c(0, 2*pi))
e_d_e6 = rescale(e_d_e6, from=c(0,20), to= c(0, 2*pi))
e_d_e7 = rescale(e_d_e7, from=c(0,20), to= c(0, 2*pi))
e_d_e8 = rescale(e_d_e8, from=c(0,20), to= c(0, 2*pi))

# TOP LCD EMOTIONS
####################################################################
e_top_e1 = top_e1$Emotion.1
e_top_e2 = top_e2$Emotion.1
e_top_e3 = top_e3$Emotion.1
e_top_e4 = top_e4$Emotion.1
e_top_e5 = top_e5$Emotion.1
e_top_e6 = top_e6$Emotion.1
e_top_e7 = top_e7$Emotion.1
e_top_e8 = top_e8$Emotion.1
e_top_e9 = top_e9$Emotion.1

# remove 0's (no emotion) and 151 entries (other)
e_top_e1 = e_top_e1[e_top_e1 != 0]
e_top_e1 = e_top_e1[e_top_e1 != 151]
e_top_e2 = e_top_e2[e_top_e2 != 0]
e_top_e2 = e_top_e2[e_top_e2 != 151]
e_top_e3 = e_top_e3[e_top_e3 != 0]
e_top_e3 = e_top_e3[e_top_e3 != 151]
e_top_e4 = e_top_e4[e_top_e4 != 0]
e_top_e4 = e_top_e4[e_top_e4 != 151]
e_top_e5 = e_top_e5[e_top_e5 != 0]
e_top_e5 = e_top_e5[e_top_e5 != 151]
e_top_e6 = e_top_e6[e_top_e6 != 0]
e_top_e6 = e_top_e6[e_top_e6 != 151]
e_top_e7 = e_top_e7[e_top_e7 != 0]
e_top_e7 = e_top_e7[e_top_e7 != 151]
e_top_e8 = e_top_e8[e_top_e8 != 0]
e_top_e8 = e_top_e8[e_top_e8 != 151]
e_top_e9 = e_top_e9[e_top_e9 != 0]
e_top_e9 = e_top_e9[e_top_e9 != 151]

# dynamic rescale 
e_top_e1 = rescale(e_top_e1, from=c(0,20), to= c(0, 2*pi))
e_top_e2 = rescale(e_top_e2, from=c(0,20), to= c(0, 2*pi))
e_top_e3 = rescale(e_top_e3, from=c(0,20), to= c(0, 2*pi))
e_top_e4 = rescale(e_top_e4, from=c(0,20), to= c(0, 2*pi))
e_top_e5 = rescale(e_top_e5, from=c(0,20), to= c(0, 2*pi))
e_top_e6 = rescale(e_top_e6, from=c(0,20), to= c(0, 2*pi))
e_top_e7 = rescale(e_top_e7, from=c(0,20), to= c(0, 2*pi))
e_top_e8 = rescale(e_top_e8, from=c(0,20), to= c(0, 2*pi))
e_top_e9 = rescale(e_top_e9, from=c(0,20), to= c(0, 2*pi))


# BOTTOM LCD EMOTIONS
####################################################################
e_low_e1 = low_e1$Emotion.1
e_low_e2 = low_e2$Emotion.1
e_low_e3 = low_e3$Emotion.1
e_low_e4 = low_e4$Emotion.1
e_low_e5 = low_e5$Emotion.1
e_low_e6 = low_e6$Emotion.1
e_low_e7 = low_e7$Emotion.1
e_low_e8 = low_e8$Emotion.1
e_low_e9 = low_e9$Emotion.1

# remove 0's (no emotion) and 151 entries (other)
e_low_e1 = e_low_e1[e_low_e1 != 0]
e_low_e1 = e_low_e1[e_low_e1 != 151]
e_low_e2 = e_low_e2[e_low_e2 != 0]
e_low_e2 = e_low_e2[e_low_e2 != 151]
e_low_e3 = e_low_e3[e_low_e3 != 0]
e_low_e3 = e_low_e3[e_low_e3 != 151]
e_low_e4 = e_low_e4[e_low_e4 != 0]
e_low_e4 = e_low_e4[e_low_e4 != 151]
e_low_e5 = e_low_e5[e_low_e5 != 0]
e_low_e5 = e_low_e5[e_low_e5 != 151]
e_low_e6 = e_low_e6[e_low_e6 != 0]
e_low_e6 = e_low_e6[e_low_e6 != 151]
e_low_e7 = e_low_e7[e_low_e7 != 0]
e_low_e7 = e_low_e7[e_low_e7 != 151]
e_low_e8 = e_low_e8[e_low_e8 != 0]
e_low_e8 = e_low_e8[e_low_e8 != 151]
e_low_e9 = e_low_e9[e_low_e9 != 0]
e_low_e9 = e_low_e9[e_low_e9 != 151]

# lower head rescale 
e_low_e1 = rescale(e_low_e1, from=c(0,20), to= c(0, 2*pi))
e_low_e2 = rescale(e_low_e2, from=c(0,20), to= c(0, 2*pi))
e_low_e3 = rescale(e_low_e3, from=c(0,20), to= c(0, 2*pi))
e_low_e4 = rescale(e_low_e4, from=c(0,20), to= c(0, 2*pi))
e_low_e5 = rescale(e_low_e5, from=c(0,20), to= c(0, 2*pi))
e_low_e6 = rescale(e_low_e6, from=c(0,20), to= c(0, 2*pi))
e_low_e7 = rescale(e_low_e7, from=c(0,20), to= c(0, 2*pi))
e_low_e8 = rescale(e_low_e8, from=c(0,20), to= c(0, 2*pi))
e_low_e9 = rescale(e_low_e9, from=c(0,20), to= c(0, 2*pi))


## GENERATE ROSE DIAGRAMS
####################################################################

# static
rose.diag(e_s_e1, bins=20, col = 2, main = 'e1: Happyness') 
rose.diag(e_s_e2, bins=20, col = 2, main = 'e2: Content') 
rose.diag(e_s_e3, bins=20, col = 2, main = 'e3: Surprise') 
rose.diag(e_s_e4, bins=20, col = 2, main = 'e4: Fear') 
rose.diag(e_s_e5, bins=20, col = 2, main = 'e5: Angry') 
rose.diag(e_s_e6, bins=20, col = 2, main = 'e6: Awe') 
rose.diag(e_s_e7, bins=20, col = 2, main = 'e7: Sad') 
rose.diag(e_s_e8, bins=20, col = 2, main = 'e8: Disgust') 
rose.diag(e_s_e9, bins=20, col = 2, main = 'e9: Neutral') 

segments(x0=0, y0=0, 
         x1=cos(seq(from=0, to=2*pi, length.out=21)) * 1,   # do some maths...
         y1=sin(seq(from=0, to=2*pi, length.out=21)) * 1,   # *1.5: extend radial lines outwards
         col="GRAY")

# dynamic
rose.diag(e_d_e1, bins=20, col = 2, main = 'e1: Happyness') 
rose.diag(e_d_e2a, bins=20, col = 2, main = 'e2: Content') 
rose.diag(e_d_e2b, bins=20, col = 2, main = 'e2: Content') 
rose.diag(e_d_e3, bins=20, col = 2, main = 'e3: Surprise') 
rose.diag(e_d_e4, bins=20, col = 2, main = 'e4: Fear') 
rose.diag(e_d_e5, bins=20, col = 2, main = 'e5: Angry') 
rose.diag(e_d_e6, bins=20, col = 2, main = 'e6: Awe') 
rose.diag(e_d_e7, bins=20, col = 2, main = 'e7: Sad') 
rose.diag(e_d_e8, bins=20, col = 2, main = 'e8: Disgust') 

segments(x0=0, y0=0, 
         x1=cos(seq(from=0, to=2*pi, length.out=21)) * 1,   # do some maths...
         y1=sin(seq(from=0, to=2*pi, length.out=21)) * 1,   # *1.5: extend radial lines outwards
         col="GRAY")

# top screen
rose.diag(e_top_e1, bins=20, col = 2, main = 'e1: Happyness') 
rose.diag(e_top_e2, bins=20, col = 2, main = 'e2: Content') 
rose.diag(e_top_e3, bins=20, col = 2, main = 'e3: Surprise') 
rose.diag(e_top_e4, bins=20, col = 2, main = 'e4: Fear') 
rose.diag(e_top_e5, bins=20, col = 2, main = 'e5: Angry') 
rose.diag(e_top_e6, bins=20, col = 2, main = 'e6: Awe') 
rose.diag(e_top_e7, bins=20, col = 2, main = 'e7: Sad') 
rose.diag(e_top_e8, bins=20, col = 2, main = 'e8: Disgust') 
rose.diag(e_top_e9, bins=20, col = 2, main = 'e9: Neutral') 

segments(x0=0, y0=0, 
         x1=cos(seq(from=0, to=2*pi, length.out=21)) * 1,   # do some maths...
         y1=sin(seq(from=0, to=2*pi, length.out=21)) * 1,   # *1.5: extend radial lines outwards
         col="GRAY")

# bottom screen
rose.diag(e_low_e1, bins=20, col = 2, main = 'e1: Happyness') 
rose.diag(e_low_e2, bins=20, col = 2, main = 'e2: Content') 
rose.diag(e_low_e3, bins=20, col = 2, main = 'e3: Surprise') 
rose.diag(e_low_e4, bins=20, col = 2, main = 'e4: Fear') 
rose.diag(e_low_e5, bins=20, col = 2, main = 'e5: Angry') 
rose.diag(e_low_e6, bins=20, col = 2, main = 'e6: Awe') 
rose.diag(e_low_e7, bins=20, col = 2, main = 'e7: Sad') 
rose.diag(e_low_e8, bins=20, col = 2, main = 'e8: Disgust') 
rose.diag(e_low_e9, bins=20, col = 2, main = 'e9: Neutral') 

# draw segment lines
segments(x0=0, y0=0, 
         x1=cos(seq(from=0, to=2*pi, length.out=21)) * 1,   # do some maths...
         y1=sin(seq(from=0, to=2*pi, length.out=21)) * 1,   # *1.5: extend radial lines outwards
         col="GRAY")



## ANALYSIS
# should be able to see if the distribution is gaussian from visual inspection
# would be really nice to be able to get a circular boxplot - see https://link.springer.com/article/10.1007/s00180-011-0261-5 



# PART III
##########################################
# see python script

