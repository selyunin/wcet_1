#!/usr/bin/python
import matplotlib.pyplot as plt

y0 = sorted([5477, 30083, 17089, 17847, 18859, 30083, 30075])
wcet_O0 = 46904

y1 = sorted([847, 10991, 5613, 5915, 6343, 10983, 10991])
wcet_O1 = 17139

x = []
for i in range(len(y0) + 1):
    x.append(i)

labels = ['Sorted', 'Random', 'Random', 'Random','Equal', 'Largest reverse', 'Reverse', 'WCET']

fig = plt.figure()
ax = fig.add_subplot(1,1,1)
ax.plot(x[0:len(x)-1], y1, 'ro', label = "O1")
ax.plot(x[0:len(x)-1], y0, 'bo', label = "O0")
ax.plot(x[len(x)-1], wcet_O1, 'rD')
ax.plot(x[len(x)-1], wcet_O0, 'bD')

#Create custom artists
simArtist_O0 = plt.Line2D((0,1),(0,0), color='b', marker='o', linestyle='')
simArtist_O1 = plt.Line2D((0,1),(0,0), color='r', marker='o', linestyle='')

# You can specify a rotation for the tick labels in degrees or with keywords.
plt.xticks(x, labels, rotation='vertical')

# Pad margins so that markers don't get clipped by the axes
plt.margins(0.2)

# Tweak spacing to prevent clipping of tick-labels
plt.subplots_adjust(bottom=0.15)

plt.legend([simArtist_O0, simArtist_O1 ], 
        ["O0", "O1" ], loc=2)
plt.ylim([0,50000])
plt.gca().grid(True)
plt.ylabel('# of cycles', fontsize=16)
plt.show()
