# Random Peer Evaluation

## Usage
Update `students.txt` with your students, one name per line, then run
`script.R`. Your results will be in `evaluation_assignments.csv`.

## What it is
This is a script to assign students to evaluate one another's work to ensure
that everyone gets enough evaluation but nobody has to do too much evaluating.

## How it works
To ensure that each student evaluates the same number of peers, we could put
them in a circle, and have each student give their assignment to the five people
on their right. This script simply replaces that relationship with numbers in a
circle, then shuffles student names before assigning names to those numbers. 
