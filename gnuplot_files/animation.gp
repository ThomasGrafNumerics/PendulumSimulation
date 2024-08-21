# Set the terminal type to gif for animation
set terminal gif animate delay 10 # delay in hundredths of a second

# Set the output file
set output 'pendulum_animation.gif'

# Set the range for the plot
set xrange [-2:2]  # Adjust according to your pendulum length and movement
set yrange [-2:2]

# Set aspect ratio to 1 to maintain a square plot
set size ratio 1

# Remove grid and axes for better visualization
unset border
unset xtics
unset ytics

# Plot the data points
do for [i=1:500] {
    plot 'animation.dat' every ::i::i using 2:3 with linespoints pt 7 lw 2 lc rgb "blue" title ''
}
