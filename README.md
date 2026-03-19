# csc360-project

# Division of Labor
We decided to each handle one of the two algoritms. Dawson worked on the insertion sort algorithm, while Mark worked on the binary search algorithm. This proved to work well, as each team member's work was distributed across the various deliverables for each algorithm. As challenges arose, the team members would discuss and help each other where it was needed. 

# Notes on Challenges

# Insertion Sort
One challenge that Dawson faced while working with the insertion sort algorithm was uncontrolled iteration of the i variable (outer loop variable) in his assembly file. For example, for an array of size 5, it is expected that i would iterate only 4 (n-1) times, but the iteration would not stop. This was resolved by realizing that the chosen processor while testing was a 5-stage processor without hazard detection or forwarding, which caused memory hazards so that the conditions to exit the iterative loop were never met. After correcting this--by switching to either a single-stage processor or a 5-stage processor with hazard detection and forwarding--the issue was resolved, and the algorithm functioned as expected. This challenge ultimately helped to gain confidence using Ripes, as well as isolating potential hazards in the algorithm.

# Binary Search
