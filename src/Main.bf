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
	[+]
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
	All positions to right are empty
	Add 43 to position 1 right
	>>+++++++[-<++++++>]<+<
	If cell is more than 1
	-[
		Add 2 to position 1 right
		>++<
		If cell is more than 2
		-[
			Add 1 to position 1 right
			>+<
			If cell is more than 3
			-[
				Add 14 to position 1 right
				>++++++++++++++<
				If cell is more than 4
				-[
					Add 2 to position 1 right
					>++<
					If cell is more than 5
					-[
						Add 29 to position 1 right
						>>++++[-<+++++++>]<+<
						If cell is more than 6
						-[
							Add 2 to position 1 right
							>++<
							End if
							-
						]
					]
				]
			]
		]
	]
	Output position 1 right and reset
	>.[+]<
	Move to next cell on left
	<
]