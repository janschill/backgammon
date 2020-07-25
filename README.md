# backgammon

Create a backgammon game engine that allows gameplay against a computer. It should be written in Haskell and solemly run in the command line, as it is for learning purposes only. 

## To-do

- Random number generator (RNG) for the simulation of random dice tosses
- Command line printing of game state
- Minmax for computer simulation?

## The game

### The board

The board consists of 24 triangles, 12 on each side. These are called points and are numbered from 1 to 24. The playing stones, 30 in total, 15 for each player, have several names but shall be called stones for this project. The stones are placed as the following: two on their 24-point, three on their 8-point, and five each on their 13-point and their 6-point. The two players move their chips in opposing directions, from the 24-point towards the 1-point.

## Game rules

### Beginning

1. Set up the board
1. Every player tosses one dice. The player with the higher thrown number starts with the combination of both dice thrown. If both dice show the same number of pips, the dice are rerolled.
