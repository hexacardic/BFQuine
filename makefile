main.bf: Sequence.bf Build_Sequence.bf
	cat Build_Sequence.bf Sequence.bf > main.bf

Build_Sequence.bf: Build Sequence.bf
	Build < Sequence.bf > Build_Sequence.bf

Build: Build.hs
	ghc Build.hs

Sequence.bf: Sequence_Commented.bf
	sed "s/[^.,+-<>]//g" < Sequence_Commented.bf > Sequence.bf

.PHONY: clean
clean:
	rm -f main.bf Sequence.bf Build_Sequence.bf Build Build.hi Build.o