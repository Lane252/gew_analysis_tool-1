# http://rstudio-pubs-static.s3.amazonaws.com/3369_998f8b2d788e4a0384ae565c4280aa47.html

rm(list=ls())

##########################################
getwd()
##########################################
## READ IN DATA FILES

#set working directory
setwd("C:/Users/botmechanic/Documents/Research/Social_Interaction/libby_tests")

# Static
s_e1 = read.csv("test2_csv/static/s_e1.csv", stringsAsFactors=FALSE)       
s_e2 = read.csv("test2_csv/static/s_e2.csv", stringsAsFactors=FALSE)       
s_e3 = read.csv("test2_csv/static/s_e3.csv", stringsAsFactors=FALSE)       
s_e4 = read.csv("test2_csv/static/s_e4.csv", stringsAsFactors=FALSE)       
s_e5 = read.csv("test2_csv/static/s_e5.csv", stringsAsFactors=FALSE)       
s_e6 = read.csv("test2_csv/static/s_e6.csv", stringsAsFactors=FALSE)       
s_e7 = read.csv("test2_csv/static/s_e7.csv", stringsAsFactors=FALSE)       
s_e8 = read.csv("test2_csv/static/s_e8.csv", stringsAsFactors=FALSE)       
s_e9 = read.csv("test2_csv/static/s_e9.csv", stringsAsFactors=FALSE)       
s_e10 = read.csv("test2_csv/static/s_e10.csv", stringsAsFactors=FALSE)       
s_e11 = read.csv("test2_csv/static/s_e11.csv", stringsAsFactors=FALSE)       
s_e12 = read.csv("test2_csv/static/s_e12.csv", stringsAsFactors=FALSE)       
s_e13 = read.csv("test2_csv/static/s_e13.csv", stringsAsFactors=FALSE)       
s_e14 = read.csv("test2_csv/static/s_e14.csv", stringsAsFactors=FALSE)       
s_e15 = read.csv("test2_csv/static/s_e15.csv", stringsAsFactors=FALSE)       
s_e16 = read.csv("test2_csv/static/s_e16.csv", stringsAsFactors=FALSE)       
s_e17 = read.csv("test2_csv/static/s_e17.csv", stringsAsFactors=FALSE)       
s_e18 = read.csv("test2_csv/static/s_e18.csv", stringsAsFactors=FALSE)  

# circular analysis
circl_s = read.csv("test2_csv/circl_s.csv", stringsAsFactors=FALSE)       

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
s_e10 = na.omit(s_e10)
s_e11 = na.omit(s_e11)
s_e12 = na.omit(s_e12)
s_e13 = na.omit(s_e13)
s_e14 = na.omit(s_e14)
s_e15 = na.omit(s_e15)
s_e16 = na.omit(s_e16)
s_e17 = na.omit(s_e17)
s_e18 = na.omit(s_e18)



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
q_s_e10 = table(s_e10$Quadrant)
q_s_e11 = table(s_e11$Quadrant)
q_s_e12 = table(s_e12$Quadrant)
q_s_e13 = table(s_e13$Quadrant)
q_s_e14 = table(s_e14$Quadrant)
q_s_e15 = table(s_e15$Quadrant)
q_s_e16 = table(s_e16$Quadrant)
q_s_e17 = table(s_e17$Quadrant)
q_s_e18 = table(s_e18$Quadrant)

q_s_e1
q_s_e2
q_s_e3
q_s_e4
q_s_e5
q_s_e6
q_s_e7
q_s_e8
q_s_e9
q_s_e10
q_s_e11
q_s_e12
q_s_e13
q_s_e14
q_s_e15
q_s_e16
q_s_e17
q_s_e18


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
e_s_e10 = s_e10$Emotion.1
e_s_e11 = s_e11$Emotion.1
e_s_e12 = s_e12$Emotion.1
e_s_e13 = s_e13$Emotion.1
e_s_e14 = s_e14$Emotion.1
e_s_e15 = s_e15$Emotion.1
e_s_e16 = s_e16$Emotion.1
e_s_e17 = s_e17$Emotion.1
e_s_e18 = s_e18$Emotion.1


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
e_s_e10 = e_s_e10[e_s_e10 != 0]
e_s_e10 = e_s_e10[e_s_e10 != 151]
e_s_e11 = e_s_e11[e_s_e11 != 0]
e_s_e11 = e_s_e11[e_s_e11 != 151]
e_s_e12 = e_s_e12[e_s_e12 != 0]
e_s_e12 = e_s_e12[e_s_e12 != 151]
e_s_e13 = e_s_e13[e_s_e13 != 0]
e_s_e13 = e_s_e13[e_s_e13 != 151]
e_s_e14 = e_s_e14[e_s_e14 != 0]
e_s_e14 = e_s_e14[e_s_e14 != 151]
e_s_e15 = e_s_e15[e_s_e15 != 0]
e_s_e15 = e_s_e15[e_s_e15 != 151]
e_s_e16 = e_s_e16[e_s_e16 != 0]
e_s_e16 = e_s_e16[e_s_e16 != 151]
e_s_e17 = e_s_e17[e_s_e17 != 0]
e_s_e17 = e_s_e17[e_s_e17 != 151]
e_s_e18 = e_s_e18[e_s_e18 != 0]
e_s_e18 = e_s_e18[e_s_e18 != 151]

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
len_na_s_e10 = length(s_e10$Emotion.1) - length( s_e10$Emotion.1[s_e10$Emotion.1 != 151] )
len_na_s_e11 = length(s_e11$Emotion.1) - length( s_e11$Emotion.1[s_e11$Emotion.1 != 151] )
len_na_s_e12 = length(s_e12$Emotion.1) - length( s_e12$Emotion.1[s_e12$Emotion.1 != 151] )
len_na_s_e13 = length(s_e13$Emotion.1) - length( s_e13$Emotion.1[s_e13$Emotion.1 != 151] )
len_na_s_e14 = length(s_e14$Emotion.1) - length( s_e14$Emotion.1[s_e14$Emotion.1 != 151] )
len_na_s_e15 = length(s_e15$Emotion.1) - length( s_e15$Emotion.1[s_e15$Emotion.1 != 151] )
len_na_s_e16 = length(s_e16$Emotion.1) - length( s_e16$Emotion.1[s_e16$Emotion.1 != 151] )
len_na_s_e17 = length(s_e17$Emotion.1) - length( s_e17$Emotion.1[s_e17$Emotion.1 != 151] )
len_na_s_e18 = length(s_e18$Emotion.1) - length( s_e18$Emotion.1[s_e18$Emotion.1 != 151] )

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
len_0_s_e10 = length(s_e10$Emotion.1) - length( s_e10$Emotion.1[s_e10$Emotion.1 != 0] )
len_0_s_e11 = length(s_e11$Emotion.1) - length( s_e11$Emotion.1[s_e11$Emotion.1 != 0] )
len_0_s_e12 = length(s_e12$Emotion.1) - length( s_e12$Emotion.1[s_e12$Emotion.1 != 0] )
len_0_s_e13 = length(s_e13$Emotion.1) - length( s_e13$Emotion.1[s_e13$Emotion.1 != 0] )
len_0_s_e14 = length(s_e14$Emotion.1) - length( s_e14$Emotion.1[s_e14$Emotion.1 != 0] )
len_0_s_e15 = length(s_e15$Emotion.1) - length( s_e15$Emotion.1[s_e15$Emotion.1 != 0] )
len_0_s_e16 = length(s_e16$Emotion.1) - length( s_e16$Emotion.1[s_e16$Emotion.1 != 0] )
len_0_s_e17 = length(s_e17$Emotion.1) - length( s_e17$Emotion.1[s_e17$Emotion.1 != 0] )
len_0_s_e18 = length(s_e18$Emotion.1) - length( s_e18$Emotion.1[s_e18$Emotion.1 != 0] )


# calculate uncertainty
static_uncertainty = cbind( c(len_static - (len_na_s_e1+len_0_s_e1), len_na_s_e1, len_0_s_e1),
                            c(len_static - (len_na_s_e2+len_0_s_e2), len_na_s_e2, len_0_s_e2),
                            c(len_static - (len_na_s_e3+len_0_s_e3), len_na_s_e3, len_0_s_e3),
                            c(len_static - (len_na_s_e4+len_0_s_e4), len_na_s_e4, len_0_s_e4),
                            c(len_static - (len_na_s_e5+len_0_s_e5), len_na_s_e5, len_0_s_e5),
                            c(len_static - (len_na_s_e6+len_0_s_e6), len_na_s_e6, len_0_s_e6),
                            c(len_static - (len_na_s_e7+len_0_s_e7), len_na_s_e7, len_0_s_e7),
                            c(len_static - (len_na_s_e8+len_0_s_e8), len_na_s_e8, len_0_s_e8),
                            c(len_static - (len_na_s_e9+len_0_s_e9), len_na_s_e9, len_0_s_e9),
                            c(len_static - (len_na_s_e10+len_0_s_e10), len_na_s_e10, len_0_s_e10),
                            c(len_static - (len_na_s_e11+len_0_s_e11), len_na_s_e11, len_0_s_e1),
                            c(len_static - (len_na_s_e12+len_0_s_e12), len_na_s_e12, len_0_s_e12),
                            c(len_static - (len_na_s_e13+len_0_s_e13), len_na_s_e13, len_0_s_e13),
                            c(len_static - (len_na_s_e14+len_0_s_e14), len_na_s_e14, len_0_s_e14),
                            c(len_static - (len_na_s_e15+len_0_s_e15), len_na_s_e15, len_0_s_e15),
                            c(len_static - (len_na_s_e16+len_0_s_e16), len_na_s_e16, len_0_s_e16),
                            c(len_static - (len_na_s_e17+len_0_s_e17), len_na_s_e17, len_0_s_e17),
                            c(len_static - (len_na_s_e18+len_0_s_e18), len_na_s_e18, len_0_s_e18) )

# Create the bar chart.
colors <- c("green","orange","red")
emotions <- c("e1","e2","e3","e4","e5", "e6", "e7", "e8", "e9", "e10", "e11","e12","e13","e14","e15", "e16", "e17", "e18")
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
e_s_e10 = rescale(e_s_e10, from=c(0,20), to= c(0, 2*pi))
e_s_e11 = rescale(e_s_e11, from=c(0,20), to= c(0, 2*pi))
e_s_e12 = rescale(e_s_e12, from=c(0,20), to= c(0, 2*pi))
e_s_e13 = rescale(e_s_e13, from=c(0,20), to= c(0, 2*pi))
e_s_e14 = rescale(e_s_e14, from=c(0,20), to= c(0, 2*pi))
e_s_e15 = rescale(e_s_e15, from=c(0,20), to= c(0, 2*pi))
e_s_e16 = rescale(e_s_e16, from=c(0,20), to= c(0, 2*pi))
e_s_e17 = rescale(e_s_e17, from=c(0,20), to= c(0, 2*pi))
e_s_e18 = rescale(e_s_e18, from=c(0,20), to= c(0, 2*pi))

## GENERATE ROSE DIAGRAMS
####################################################################

# static
rose.diag(e_s_e1, bins=20, col = 2, main = 'e1') 
rose.diag(e_s_e2, bins=20, col = 2, main = 'e2') 
rose.diag(e_s_e3, bins=20, col = 2, main = 'e3') 
rose.diag(e_s_e4, bins=20, col = 2, main = 'e4') 
rose.diag(e_s_e5, bins=20, col = 2, main = 'e5') 
rose.diag(e_s_e6, bins=20, col = 2, main = 'e6') 
rose.diag(e_s_e7, bins=20, col = 2, main = 'e7') 
rose.diag(e_s_e8, bins=20, col = 2, main = 'e8') 
rose.diag(e_s_e9, bins=20, col = 2, main = 'e9') 
rose.diag(e_s_e10, bins=20, col = 2, main = 'e10') 
rose.diag(e_s_e11, bins=20, col = 2, main = 'e11') 
rose.diag(e_s_e12, bins=20, col = 2, main = 'e12') 
rose.diag(e_s_e13, bins=20, col = 2, main = 'e13') 
rose.diag(e_s_e14, bins=20, col = 2, main = 'e14') 
rose.diag(e_s_e15, bins=20, col = 2, main = 'e15') 
rose.diag(e_s_e16, bins=20, col = 2, main = 'e16') 
rose.diag(e_s_e17, bins=20, col = 2, main = 'e17') 
rose.diag(e_s_e18, bins=20, col = 2, main = 'e18') 

segments(x0=0, y0=0, 
         x1=cos(seq(from=0, to=2*pi, length.out=21)) * 1,   # do some maths...
         y1=sin(seq(from=0, to=2*pi, length.out=21)) * 1,   # *1.5: extend radial lines outwards
         col="GRAY")

# significance tests

# Compare old e1 with new e18 - SE quadrant
old_e1 = c(26,8)
new_e18 = c(22,5)
emotion_1 = rbind(old_e1, new_e18)

colnames(emotion_1) <- c("correct","incorrect")
rownames(emotion_1) <- c("old_e1","new_e18")
emotion_1 <- as.table(emotion_1) 
fisher.test(emotion_1)

# Compare old e2 with new e4 - NE quadrant
old_e2 = c(3,31)
new_e4 = c(14,13)
emotion_2 = rbind(old_e2, new_e4)

colnames(emotion_2) <- c("correct","incorrect")
rownames(emotion_2) <- c("old_e1","new_e18")
emotion_1 <- as.table(emotion_2) 
fisher.test(emotion_2)

# Compare old e4 with new e7 - NW quadrant
old_e4 = c(10,24)
new_e7 = c(20,7)
emotion_3 = rbind(old_e4, new_e7)

colnames(emotion_3) <- c("correct","incorrect")
rownames(emotion_3) <- c("old_e1","new_e18")
emotion_3 <- as.table(emotion_3) 
fisher.test(emotion_3)

# Compare old e7 with new e14 - SW quadrant
old_e7 = c(30,4)
new_e14 = c(27,0)
emotion_4 = rbind(old_e7, new_e14)

colnames(emotion_4) <- c("correct","incorrect")
rownames(emotion_4) <- c("old_e1","new_e18")
emotion_4 <- as.table(emotion_4) 
fisher.test(emotion_4)

# Compare old e8 with new e6 - NW quadrant
old_e8 = c(2,32)
new_e6 = c(17,10)
emotion_5 = rbind(old_e8, new_e6)

colnames(emotion_4) <- c("correct","incorrect")
rownames(emotion_4) <- c("old_e1","new_e18")
emotion_5 <- as.table(emotion_5) 
fisher.test(emotion_5)

# Compare old e9 with new e12 - 'no emotion' zone
old_e9 = c(11,23)
new_e12 = c(6,21)
emotion_6 = rbind(old_e9, new_e12)

colnames(emotion_6) <- c("correct","incorrect")
rownames(emotion_6) <- c("old_e1","new_e18")
emotion_6 <- as.table(emotion_6) 
fisher.test(emotion_6)

