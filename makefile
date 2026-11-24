Quine.bf: build/Set.bf build/Main.bf
	cat $^ > $@

build/Set.bf: build/Main.bf build/Build
	./build/Build < $< > $@

build/Build: src/Build.hs
	mkdir -p $(@D)
	ghc $< -o $@ -odir $(@D) -hidir $(@D)

build/Main.bf: src/Main.bf
	mkdir -p $(@D)
	tr -cd "[].,<>+-" < $< > $@

.PHONY: clean
clean:
	rm -rf Quine.bf build