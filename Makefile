compile: 
	mkdir -p ./test/ebin
	erl -make

clean:
	rm -rf ./ebin/*.beam
	rm -rf ./test/ebin/*.beam
