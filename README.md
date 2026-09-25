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

In Lab 05, we implemented an equation in naive.v to describe a truth table. From the truth table, we drew K-maps to develop the equations for the minterm and maxterm, which we then implemented in minterm.v and maxterm.v. We simulated the design to check for errors before sending it to the board. The next step was to analyze the LUT and see how the inputs were mapped differently from our given truth table. 

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

KMap is actually a circular table that we display as a flat table, the edge outputs connect in a circular manner. 

### Why are the names Sum of Products and Products of Sums?
The literal definition describes what is happening. In a Sum of Products, when we derive a logical expression, we default to AND (Boolean product), and each subsequent term is then combined with OR (Boolean sum). Product of Sums is the opposite: when deriving a logical expression, we default to OR (Boolean sum), and each subsequent term is combined with AND (Boolean product).

### Open the test.v file – how are we able to check that the signals match using XOR?
XOR (Exclusive OR) allows us to compare two different signals based on the function’s requirement for exclusivity. In the test file, we compared the outputs of `led[0]` (naive output) and `led[1]` (minterm output) without overlapping their signals.

