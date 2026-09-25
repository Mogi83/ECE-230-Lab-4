# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In Lab 05 we implemented a equation in naive.v to describe a truth table, from the truth table, we drew K-maps to come up with the equations for minterm and maxterm, and then we implemented those into minterm.v and maxterm.v. We simulated the design to check if we had errors before sending to the board. The next step was to analyze at the LUT and see how the inputs were mapped differently than our given truth table.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

KMap is actually a circular table that we display as a flat table, the edge outputs connect in a circular manner. 

### Why are the names Sum of Products and Products of Sums?
The literal definition of what is happening. In Sum of Products by default when we pull a logical expression we default to and (boolean product) and every subsequent term is then combined with an or (boolean sum)

### Open the test.v file – how are we able to check that the signals match using XOR?

