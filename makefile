Quine.bf: build/Set.bf build/Main.bf
	cat $^ > $@

build/Set.bf: build/Main.bf build/Build
	./build/Build < $< > $@

build/Build: src/Build.hs
	mkdir -p $(@D)
	ghc $< -o $@ -no-keep-o-files -no-keep-hi-files

build/Main.bf: src/Main.bf
	mkdir -p $(@D)
	tr -cd "[].,<>+-" < $< > $@

build/Analyse: src/Analyse.hs
	mkdir -p $(@D)
	ghc $< -o $@ -no-keep-o-files -no-keep-hi-files

.PHONY: analyse
analyse: build/Main.bf build/Analyse
	build/Analyse < $<

.PHONY: clean
clean:
	rm -rf Quine.bf build