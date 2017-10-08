# library dependencies
library(circular) 
library("scales")

rm(list=ls()) # clean workspace

## set workspace to git workspace
setwd("C:\\Users\\botmechanic\\Desktop\\gew_analysis_tool\\testing_rds")

### STEP 1 - READ IN DATA
########################################################################
#-- read .csv files (note file location)
# note: analysis assumes same number of entries for each emotion
e1 = read.csv("csv/static/s_e1.csv", stringsAsFactors=FALSE)       
e2 = read.csv("csv/static/s_e2.csv", stringsAsFactors=FALSE)       
e3 = read.csv("csv/static/s_e3.csv", stringsAsFactors=FALSE)       
e4 = read.csv("csv/static/s_e4.csv", stringsAsFactors=FALSE)       
e5 = read.csv("csv/static/s_e5.csv", stringsAsFactors=FALSE)       
e6 = read.csv("csv/static/s_e6.csv", stringsAsFactors=FALSE)       
e7 = read.csv("csv/static/s_e7.csv", stringsAsFactors=FALSE)       
e8 = read.csv("csv/static/s_e8.csv", stringsAsFactors=FALSE)       
e9 = read.csv("csv/static/s_e9.csv", stringsAsFactors=FALSE)       

# remove cells that have 'na' entries
e1 = na.omit(e1)
e2 = na.omit(e2)
e3 = na.omit(e3)
e4 = na.omit(e4)
e5 = na.omit(e5)
e6 = na.omit(e6)
e7 = na.omit(e7)
e8 = na.omit(e8)
e9 = na.omit(e9)

### STEP 2 - QUADRANT ANALYSIS
########################################################################
# tabulate static quadrants
q_e1 = table(e1$Quadrant)
q_e2 = table(e2$Quadrant)
q_e3 = table(e3$Quadrant)
q_e4 = table(e4$Quadrant)
q_e5 = table(e5$Quadrant)
q_e6 = table(e6$Quadrant)
q_e7 = table(e7$Quadrant)
q_e8 = table(e8$Quadrant)
q_e9 = table(e9$Quadrant)

# extract emotions 
e_e1 = e1$Emotion.1
e_e2 = e2$Emotion.1
e_e3 = e3$Emotion.1
e_e4 = e4$Emotion.1
e_e5 = e5$Emotion.1
e_e6 = e6$Emotion.1
e_e7 = e7$Emotion.1
e_e8 = e8$Emotion.1
e_e9 = e9$Emotion.1

# count number of entries (assumes same number of entries for each emotion tested)
len_static = length(e1$Emotion.1)

# count number of OTHER cells
len_na_e1 = length( e_e1[e_e1==151] )
len_na_e2 = length( e_e2[e_e2==151] )
len_na_e3 = length( e_e3[e_e3==151] )
len_na_e4 = length( e_e4[e_e4==151] )
len_na_e5 = length( e_e5[e_e5==151] )
len_na_e6 = length( e_e6[e_e6==151] )
len_na_e7 = length( e_e7[e_e7==151] )
len_na_e8 = length( e_e8[e_e8==151] )
len_na_e9 = length( e_e9[e_e9==151] )

# count number of NO EMOTION cells
len_0_e1 = length( e_e1[e_e1==0] )
len_0_e2 = length( e_e2[e_e2==0] )
len_0_e3 = length( e_e3[e_e3==0] )
len_0_e4 = length( e_e4[e_e4==0] )
len_0_e5 = length( e_e5[e_e5==0] )
len_0_e6 = length( e_e6[e_e6==0] )
len_0_e7 = length( e_e7[e_e7==0] )
len_0_e8 = length( e_e8[e_e8==0] )
len_0_e9 = length( e_e9[e_e9==0] )

# calculate uncertainty table
# each entry (# id emotion, # 'other' ermotions, # 'no emotions' )
static_uncertainty = cbind( c(length(e1$Emotion.1) - (len_na_e1+len_0_e1), len_na_e1, len_0_e1),
                            c(length(e2$Emotion.1) - (len_na_e2+len_0_e2), len_na_e2, len_0_e2),
                            c(length(e3$Emotion.1) - (len_na_e3+len_0_e3), len_na_e3, len_0_e3),
                            c(length(e4$Emotion.1) - (len_na_e4+len_0_e4), len_na_e4, len_0_e4),
                            c(length(e5$Emotion.1) - (len_na_e5+len_0_e5), len_na_e5, len_0_e5),
                            c(length(e6$Emotion.1) - (len_na_e6+len_0_e6), len_na_e6, len_0_e6),
                            c(length(e7$Emotion.1) - (len_na_e7+len_0_e7), len_na_e7, len_0_e7),
                            c(length(e8$Emotion.1) - (len_na_e8+len_0_e8), len_na_e8, len_0_e8),
                            c(length(e9$Emotion.1) - (len_na_e9+len_0_e9), len_na_e9, len_0_e9) )

# Create the bar chart.
colors <- c("green","orange","red")
emotions <- c("e1","e2","e3","e4","e5", "e6", "e7", "e8", "e9")
regions <- c("Emotion Identified", "Other", "No emotion")

par(xpd=TRUE, mar=par()$mar+c(0,0,0,7))
barplot(static_uncertainty,main = "Uncertainy Recognition: Static Emotions", names.arg = emotions, xlab = "emotions", ylab = "participants", col = colors)
axis(2, c(0,34) ) # extend y-axis
legend(11,34, regions, cex = 1, fill = colors)

### STEP 3 - CIRCULAR HISTOGRAMS
########################################################################
# remove 0's (no emotion) and 151 entries (other)
e_e1 = e_e1[e_e1 != 0]
e_e2 = e_e2[e_e2 != 0]
e_e3 = e_e3[e_e3 != 0]
e_e4 = e_e4[e_e4 != 0]
e_e5 = e_e5[e_e5 != 0]
e_e6 = e_e6[e_e6 != 0]
e_e7 = e_e7[e_e7 != 0]
e_e8 = e_e8[e_e8 != 0]
e_e9 = e_e9[e_e9 != 0]

e_e1 = e_e1[e_e1 != 151]
e_e2 = e_e2[e_e2 != 151]
e_e3 = e_e3[e_e3 != 151]
e_e4 = e_e4[e_e4 != 151]
e_e5 = e_e5[e_e5 != 151]
e_e6 = e_e6[e_e6 != 151]
e_e7 = e_e7[e_e7 != 151]
e_e8 = e_e8[e_e8 != 151]
e_e9 = e_e9[e_e9 != 151]

# rescale values in range 0-2pi
e_e1 = rescale(e_e1, from=c(0,20), to= c(0, 2*pi))
e_e2 = rescale(e_e2, from=c(0,20), to= c(0, 2*pi))
e_e3 = rescale(e_e3, from=c(0,20), to= c(0, 2*pi))
e_e4 = rescale(e_e4, from=c(0,20), to= c(0, 2*pi))
e_e5 = rescale(e_e5, from=c(0,20), to= c(0, 2*pi))
e_e6 = rescale(e_e6, from=c(0,20), to= c(0, 2*pi))
e_e7 = rescale(e_e7, from=c(0,20), to= c(0, 2*pi))
e_e8 = rescale(e_e8, from=c(0,20), to= c(0, 2*pi))
e_e9 = rescale(e_e9, from=c(0,20), to= c(0, 2*pi))

# GENERATE ROSE DIAGRAMS
rose.diag(e_e1, bins=20, col = 2, main = 'e1: HV-HC') 
rose.diag(e_e2, bins=20, col = 2, main = 'e2: HV-HC') 
rose.diag(e_e3, bins=20, col = 2, main = 'e3: HV-LC') 
rose.diag(e_e4, bins=20, col = 2, main = 'e4: LV-LC') 
rose.diag(e_e5, bins=20, col = 2, main = 'e5: LV-HC') 
rose.diag(e_e6, bins=20, col = 2, main = 'e6: HV-LC') 
rose.diag(e_e7, bins=20, col = 2, main = 'e7: LV-LC') 
rose.diag(e_e8, bins=20, col = 2, main = 'e8: LV-HC') 
rose.diag(e_e9, bins=20, col = 2, main = 'e9: Neutral') 

# add boarders to rose diagrams
segments(x0=0, y0=0, 
         x1=cos(seq(from=0, to=2*pi, length.out=21)) * 1,   # do some maths...
         y1=sin(seq(from=0, to=2*pi, length.out=21)) * 1,   # *1.5: extend radial lines outwards
         col="GRAY")
