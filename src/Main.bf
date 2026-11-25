Return to start of sequence
[>]<

Output code to build sequence
Start pointing at start of sequence
[
	Looking at cell in sequence which is negative k
	3 spots to the right are all 0
	Move to spots 2 and 3 left of old cell
	[->>+>+<<<]
	Looking at old cell which is 0
	Set up 60 in spot 1 right
	++++++[->++++++++++<]>
	Looking at spot 1 right which is 60
	Output
	.
	Subtract 15 from spot 1 right
	<+++++[->---<]>
	Looking at spot 1 right which is 45
	>
	Looking at spot 2 right which is negative k
	Output spot 1 right which is 45 k times
	[+<.>]
	Looking at spot 2 right which is 0
	Move to spot 1 right
	<
	Reset to 0
	[+]
	Looking at spot 1 right
	<<
	Looking at next cell in sequence
]
End pointing at position four left of end of sequence
>>>>

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