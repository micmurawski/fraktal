from visual import *
import random
def rys():
	imax=20000
	x=0.5
	y=0.0
	z=-0.2
	xn=0.0
	yn=0.0
	graph1=display(width=500,height=500,forward=(-3,0,-1),
		title='drzewo', range=10)
	graph1.show_rendertime=True
	pts=points(color=color.green,size=0.01)
	for i from 0 <= i < imax:  
		r=random.random(1,10,1)
		if(r<=0.1):
			xn=0.0
			yn=0.18*y
			zn=0.0
		elif (r>0.1 and r<=0.7):
			xn=0.85*x
			yn=0.85*y+0.1*z+1.6
			zn=-0.1*y+0.85*z
		elif (r>0.7 and r<=0.85):
			xn=0.2*x-0.2*y
			yn=0.2*x+0.2*y+0.8
			zn=0.3*z
		else:
			xn=-0.2*x +0.2*y
			yn=0.2*x+0.2*y+0.8
			zn=0.3*z
		x=xn
		y=yn
		z=zn
		xc=4.0*x
		yc=2.0*y-7
		zc=z
		pts.append(pos=(xc,yc,zc))