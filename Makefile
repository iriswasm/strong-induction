.PHONY : all clean

all :
	dune build @all

clean :
	rm -rf _build || true
	rm *.vo || true
	rm *.glob || true
	rm *.aux || true

