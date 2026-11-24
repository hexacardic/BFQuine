Quine.bf: build/Sequence.bf build/Build_Sequence.bf
	cat build/Build_Sequence.bf build/Sequence.bf > Quine.bf

build/Build_Sequence.bf: build/Build build/Sequence.bf
	./build/Build < build/Sequence.bf > build/Build_Sequence.bf

build/Build: src/Build.hs
	mkdir -p build
	ghc src/Build.hs -o build/Build -odir build -hidir build

build/Sequence.bf: src/Sequence_Commented.bf
	mkdir -p build
	tr -cd "[].,<>+-" < src/Sequence_Commented.bf > build/Sequence.bf

.PHONY: clean
clean:
	rm -rf Quine.bf build