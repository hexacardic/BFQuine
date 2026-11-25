# BFQuine

A quine (program that outputs its own source code) in [BF](https://en.wikipedia.org/wiki/Brainfuck).

The goal is to make the quine as short as possible. It is currently at length 921 characters.

## Building

Use `make`. Requires `ghc`, `cat`, `rm`, `tr`.

## Structure

The quine runs in 4 steps

1. Build sequence
2. Return to start
3. Output code to build sequence
4. Output decoded sequence

The "sequence" is an encoding of the code to do steps 2-4. Thus, step 3 outputs the code for step 1, and step 4 outputs the code to do steps 2-4.

The sequence is stored as a consecutive run of bytes in reverse, to make doing step 3 then step 4 easier without having to return to the start of the sequence. Each byte is stored with a small number to make building the sequence shorter.

Instruction | Character | Decimal | Encoding
------------|-----------|---------|---------
Increment   | `+`       | 43      | 1
Decrement   | `-`       | 45      | 2
Output      | `.`       | 46      | 3
Move Left   | `<`       | 60      | 4
Move Right  | `>`       | 62      | 5
While       | `[`       | 91      | 6
End While   | `]`       | 93      | 7

### Code to Build Sequence

To build a byte k, move right, then increment from zero k times.

Increment is `+` which is decimal 43. Move right is `>` which is decimal 62.

## Files

`src/Main.bf` is the code to do steps 2-4 with spacing, indentation, and comments to explain roughly what it is doing.

`build/Main.bf` is a minified version of `src/Main.bf`.

`build/Set.bf` is the code to do step 1.

`build/Build` is built from `src/Build.hs`, which is the code to convert `build/Main.bf` into `build/Set.bf`.

`Quine.bf` is the completed quine.