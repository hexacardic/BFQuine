Quine.bf: build/Build_Sequence.bf build/Sequence.bf
	cat $^ > $@

build/Build_Sequence.bf: build/Sequence.bf build/Build
	./build/Build < $< > $@

build/Build: src/Build.hs
	mkdir -p $(@D)
	ghc $< -o $@ -odir $(@D) -hidir $(@D)

build/Sequence.bf: src/Sequence_Commented.bf
	mkdir -p $(@D)
	tr -cd "[].,<>+-" < $< > $@

.PHONY: clean
clean:
	rm -rf Quine.bf build