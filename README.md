# BFQuine

A quine (program that outputs its own source code) in [BF](https://en.wikipedia.org/wiki/Brainfuck).

## Building

Use `make`. Requires `ghc`, `cat`, `rm`, `tr`.

## Structure

1. Build sequence
2. Return to start and output code to build sequence
3. Return to start and output sequence

Sequence = Code to do steps 2 and 3

Sequence stored in every second position

### Code to Build Sequence

To build a byte k increment from zero k times, then move right twice.

Increment is decimal 43, move right is decimal 62.

## Files

`Sequence_Commented.bf` is the code to do steps 2 and 3 with spacing, indentation, and comments to explain roughly what it is doing.

`Sequence.bf` is a minified version of `Sequence_Commented.bf`.

`Build_Sequence.bf` is the code to do step 1.

`Build` is built from `Build.hs`, which is the code to convert `Sequence.bf` into `Build_Sequence.bf`.

`main.bf` is the completed quine.