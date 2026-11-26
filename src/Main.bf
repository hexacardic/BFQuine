Start pointing at left end of sequence
Return to right end of sequence
[>]<

Output code to build sequence
Start pointing at right end of sequence
[
	Looking at cell in sequence which is negative k
	2 spots to the right are all 0
	Set up 60 in spot 2 right
	>++++++[->++++++++++<]>
	Looking at spot 2 right which is 60
	Output
	.
	Multiply by 3 over 4 and move to spot 1 right
	[----<+++>]<
	Looking at spot 1 right which is 45
	<
	Looking at cell in sequence which is negative k
	Move 2 right and output 45 k times
	[+>.>-<<]
	Reset spot 1 right
	>[+]<
	Looking at old cell
	Move to next cell in sequence
	<
]
End pointing at position three left of end of sequence
>>>

Output sequence
Start pointing at left end of sequence
[
	Looking at cell in sequence which is negative k
	All positions to left are empty
	Add 43 to position 1 left
	<<+++++++[->++++++<]>+>
	If k is more than 1
	+[
		Add 2 to position 1 left
		<++>
		If k is more than 2
		+[
			Add 1 to position 1 left
			<+>
			If k is more than 3
			+[
				Add 14 to position 1 left
				<++++++++++++++>
				If k is more than 4
				+[
					Add 2 to position 1 left
					<++>
					If k is more than 5
					+[
						Add 29 to position 1 left
						<<++++[->+++++++<]>+>
						If k is more than 6
						+[
							Add 2 to position 1 left
							<++>
							End if
							+
						]
					]
				]
			]
		]
	]
	Output position 1 left and reset it
	<.[+]>
	Move to next cell on right
	>
]