Return to start of sequence
[<]>

Output code to build sequence
Start pointing at start of sequence
[
	Looking at cell in sequence which is k
	3 spots to the left are all 0
	Move to spots 2 and 3 left of old cell
	[-<<+<+>>>]
	Looking at old cell which is 0
	Set up 62 in spot 1 left
	+++++++[-<+++++++++>]<-
	Looking at spot 1 left which is 62
	Output
	.
	Subtract 19 from spot 1 left
	>+++++[-<---->]<+
	Looking at spot 1 left which is 43
	<
	Looking at spot 2 left which is k
	Output spot 1 left which is 43 k times
	[->.<]
	Looking at spot 2 left which is 0
	Move to spot 1 left
	>
	Reset to 0
	[-]
	Looking at spot 1 left
	>>
	Looking at next cell in sequence
]
End pointing at position four after end of sequence
<<<<

Output sequence
Start pointing at end of sequence
[
	Looking at cell in sequence which is k
	Add 42 to cell
	>+++++++[-<++++++>]<
	Output cell
	.
	Clear cell
	[-]
	Move to prev cell
	<
]