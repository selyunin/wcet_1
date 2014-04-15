#!/usr/bin/python
import matplotlib.pyplot as plt
#measurements:
#64743,
#68388,
#68407,
#68372,
#64731,
#68388,
#68407,
#68388,
#68391,
#64712,
#68407,
#68388,
#68407,
#68372,
#64731,
#68388,
#68407,
#26193,
#24227,
#24208,


y0 = sorted([64743, 68388, 68407, 68372, 64731, 68388, 68407, 68388, 68391,
64712, 68407, 68388, 68407, 68372, 64731, 68388, 68407, 
26193, 24227, 24208])

#wcet_O0 = 150000

#y1 = sorted([847, 10991, 5613, 5915, 6343, 10983, 10991])
#wcet_O1 = 17139

x = []
for i in range(len(y0) + 1):
    x.append(i)

#labels = 

fig = plt.figure()
ax = fig.add_subplot(1,1,1)
#ax.plot(x[0:len(x)-1], y1, 'ro', label = "merge_samples")
ax.plot(x[0:len(x)-1], y0, 'bo', label = "O0")
#ax.plot(x[len(x)-1], wcet_O1, 'rD')
#ax.plot(x[len(x)-1], wcet_O0, 'bD')

#Create custom artists
simArtist_O0 = plt.Line2D((0,1),(0,0), color='b', marker='o', linestyle='')
#simArtist_O1 = plt.Line2D((0,1),(0,0), color='r', marker='o', linestyle='')

# You can specify a rotation for the tick labels in degrees or with keywords.
plt.xticks(x) 

# Pad margins so that markers don't get clipped by the axes
plt.margins(0.05)

# Tweak spacing to prevent clipping of tick-labels
plt.subplots_adjust(bottom=0.15)

#ax.annotate('WCET', xy=(20, 150000), xytext=(16, 130000),
#            arrowprops=dict(facecolor='black', shrink=0.15),
#            )

plt.legend([simArtist_O0], 
        ["merge_samples test execution"], loc=2)
plt.ylim([0,100000])
plt.gca().grid(True)
plt.ylabel('# of cycles', fontsize=16)
plt.xlabel('Test runs', fontsize=16)
plt.show()
