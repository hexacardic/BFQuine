# BFQuine

A quine (program that outputs its own source code) in [BF](https://en.wikipedia.org/wiki/Brainfuck).

The goal is to make the quine as short as possible. It is currently at length 2003 characters.

## Building

Use `make`. Requires `ghc`, `cat`, `rm`, `tr`.

## Structure

The quine runs in 5 steps

1. Build sequence
2. Return to start
3. Output code to build sequence
4. Return to start
5. Output sequence

The "sequence" is an encoding of the code to do steps 2-5. Thus, step 3 outputs the code for step 1, and step 5 outputs the code to do steps 2-5.

Code, in ascii, is made of characters that are in decimal 43, 45, 46, 60, 62, 91, 93.

The sequence is stored as a consecutive run of bytes. 42 is subtracted from each byte, to make it easier to build.

### Code to Build Sequence

To build a byte k, move right, then increment from zero k times.

Increment is `+` which is decimal 43. Move right is `>` which is decimal 62.


## Files

`src/Sequence_Commented.bf` is the code to do steps 2-5 with spacing, indentation, and comments to explain roughly what it is doing.

`build/Sequence.bf` is a minified version of `src/Sequence_Commented.bf`.

`build/Build_Sequence.bf` is the code to do step 1.

`build/Build` is built from `src/Build.hs`, which is the code to convert `build/Sequence.bf` into `build/Build_Sequence.bf`.

`Quine.bf` is the completed quine.