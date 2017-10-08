# library dependencies
library(circular) 
library("scales")

rm(list=ls()) # clean workspace

## set workspace to git workspace
setwd("C:\\Users\\botmechanic\\Desktop\\gew_analysis_tool\\testing_rds")

### STEP 1 - READ IN DATA
#-- read .csv files (note file location)
s_e1 = read.csv("csv/static/s_e1.csv", stringsAsFactors=FALSE)       
s_e2 = read.csv("csv/static/s_e2.csv", stringsAsFactors=FALSE)       
s_e3 = read.csv("csv/static/s_e3.csv", stringsAsFactors=FALSE)       
s_e4 = read.csv("csv/static/s_e4.csv", stringsAsFactors=FALSE)       
s_e5 = read.csv("csv/static/s_e5.csv", stringsAsFactors=FALSE)       
s_e6 = read.csv("csv/static/s_e6.csv", stringsAsFactors=FALSE)       
s_e7 = read.csv("csv/static/s_e7.csv", stringsAsFactors=FALSE)       
s_e8 = read.csv("csv/static/s_e8.csv", stringsAsFactors=FALSE)       
s_e9 = read.csv("csv/static/s_e9.csv", stringsAsFactors=FALSE)       

# remove cells that have 'na' entries
s_e1 = na.omit(s_e1)
s_e2 = na.omit(s_e2)
s_e3 = na.omit(s_e3)
s_e4 = na.omit(s_e4)
s_e5 = na.omit(s_e5)
s_e6 = na.omit(s_e6)
s_e7 = na.omit(s_e7)
s_e8 = na.omit(s_e8)
s_e9 = na.omit(s_e9)

##############################################################################################
#-- PART I: Quadrant recognition 
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

# extract emotions 
e_s_e1 = s_e1$Emotion.1
e_s_e2 = s_e2$Emotion.1
e_s_e3 = s_e3$Emotion.1
e_s_e4 = s_e4$Emotion.1
e_s_e5 = s_e5$Emotion.1
e_s_e6 = s_e6$Emotion.1
e_s_e7 = s_e7$Emotion.1
e_s_e8 = s_e8$Emotion.1
e_s_e9 = s_e9$Emotion.1

len_static = length(s_e1$Emotion.1)

# count number of OTHER cells
len_na_s_e1 = length( e_s_e1[e_s_e1==151] )
len_na_s_e2 = length( e_s_e2[e_s_e2==151] )
len_na_s_e3 = length( e_s_e3[e_s_e3==151] )
len_na_s_e4 = length( e_s_e4[e_s_e4==151] )
len_na_s_e5 = length( e_s_e5[e_s_e5==151] )
len_na_s_e6 = length( e_s_e6[e_s_e6==151] )
len_na_s_e7 = length( e_s_e7[e_s_e7==151] )
len_na_s_e8 = length( e_s_e8[e_s_e8==151] )
len_na_s_e9 = length( e_s_e9[e_s_e9==151] )

# count number of NO EMOTION cells
len_0_s_e1 = length( e_s_e1[e_s_e1==0] )
len_0_s_e2 = length( e_s_e2[e_s_e2==0] )
len_0_s_e3 = length( e_s_e3[e_s_e3==0] )
len_0_s_e4 = length( e_s_e4[e_s_e4==0] )
len_0_s_e5 = length( e_s_e5[e_s_e5==0] )
len_0_s_e6 = length( e_s_e6[e_s_e6==0] )
len_0_s_e7 = length( e_s_e7[e_s_e7==0] )
len_0_s_e8 = length( e_s_e8[e_s_e8==0] )
len_0_s_e9 = length( e_s_e9[e_s_e9==0] )

# calculate uncertainty table
# each entry (# id emotion, # 'other' ermotions, # 'no emotions' )
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

########################################################

# remove 0's (no emotion) and 151 entries (other)
e_s_e1 = e_s_e1[e_s_e1 != 0]
e_s_e2 = e_s_e2[e_s_e2 != 0]
e_s_e3 = e_s_e3[e_s_e3 != 0]
e_s_e4 = e_s_e4[e_s_e4 != 0]
e_s_e5 = e_s_e5[e_s_e5 != 0]
e_s_e6 = e_s_e6[e_s_e6 != 0]
e_s_e7 = e_s_e7[e_s_e7 != 0]
e_s_e8 = e_s_e8[e_s_e8 != 0]
e_s_e9 = e_s_e9[e_s_e9 != 0]

e_s_e1 = e_s_e1[e_s_e1 != 151]
e_s_e2 = e_s_e2[e_s_e2 != 151]
e_s_e3 = e_s_e3[e_s_e3 != 151]
e_s_e4 = e_s_e4[e_s_e4 != 151]
e_s_e5 = e_s_e5[e_s_e5 != 151]
e_s_e6 = e_s_e6[e_s_e6 != 151]
e_s_e7 = e_s_e7[e_s_e7 != 151]
e_s_e8 = e_s_e8[e_s_e8 != 151]
e_s_e9 = e_s_e9[e_s_e9 != 151]

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

## GENERATE ROSE DIAGRAMS
####################################################################

# static
rose.diag(e_s_e1, bins=20, col = 2, main = 'e1: HV-HC') 
rose.diag(e_s_e2, bins=20, col = 2, main = 'e2: HV-HC') 
rose.diag(e_s_e3, bins=20, col = 2, main = 'e3: HV-LC') 
rose.diag(e_s_e4, bins=20, col = 2, main = 'e4: LV-LC') 
rose.diag(e_s_e5, bins=20, col = 2, main = 'e5: LV-HC') 
rose.diag(e_s_e6, bins=20, col = 2, main = 'e6: HV-LC') 
rose.diag(e_s_e7, bins=20, col = 2, main = 'e7: LV-LC') 
rose.diag(e_s_e8, bins=20, col = 2, main = 'e8: LV-HC') 
rose.diag(e_s_e9, bins=20, col = 2, main = 'e9: Neutral') 

segments(x0=0, y0=0, 
         x1=cos(seq(from=0, to=2*pi, length.out=21)) * 1,   # do some maths...
         y1=sin(seq(from=0, to=2*pi, length.out=21)) * 1,   # *1.5: extend radial lines outwards
         col="GRAY")





## ANALYSIS
# should be able to see if the distribution is gaussian from visual inspection
# would be really nice to be able to get a circular boxplot - see https://link.springer.com/article/10.1007/s00180-011-0261-5 







