from pylab import *
from scipy.interpolate import griddata

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

# address to save 
saveaddress = '/home/botmechanic/Downloads/top_low/top_e9.png'

# read in results from csv file
v = genfromtxt('/home/botmechanic/Downloads/top_low/top_e9.csv',delimiter=',')



def getQuad(theta, i):
	# get quadrand 
	th_bins = 20 # since 4 quadrants x 5 states
	th_boundary = np.linspace(0, 2 * np.pi, th_bins+1)
	hist, edge =  np.histogram(theta, th_boundary)
	quad = int( np.dot(hist,np.linspace(1, th_bins, th_bins)) )

	# get quadrand 
	i_bins = 6 # 
	i_boundary = np.linspace(0, 100, i_bins+1)
	# print i_boundary
	hist, edge =  np.histogram(i, i_boundary)
	val = int( np.dot(hist,np.linspace(1, i_bins, i_bins)) )
	#print val

	return (quad+th_bins*(val-1))

# need to read in from csv file for each quadrant
# column should correspond with value

# function to lookup saved .csv file 
def lookup2(i):
	return v[i][1]

####################################################  
# setup figure  	
fig = plt.figure()
ax = Axes3D(fig)

# setup polar grid
rad = np.linspace(0, 100, 100) # 0-100, 100 interval lines
azm = np.linspace(0, 2 * np.pi, 21) # 0-2pi, 21 interval lines
r, th = np.meshgrid(rad, azm) # get 2D mesh of radial and angular coordinates

# initialise variable to store freq data
z = (r * 0) +1

# print len(z) # will equal 21
# print len(z[0]) # will equal 100

# fill 'z' with freq info
# cycle through each slice in circle
for i in range(len(z)):
	# start in centre, move out radially
	for j in range (len(z[i])):
		val = getQuad(th[i][j], r[i][j]) # return index for emotions
		print val
		z[i][j] = lookup2(val-1)

plt.subplot(projection="polar")

# see http://matplotlib.org/examples/color/colormaps_reference.html
plt.pcolormesh(th, r, z, cmap='Greys')
#plt.pcolormesh(th, z, r)

plt.plot(azm, r, color='k', ls='none') 
plt.grid()

plt.savefig(saveaddress)
plt.show()
