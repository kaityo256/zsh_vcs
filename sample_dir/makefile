DIRS=00 01

all:$(DIRS)

00:
	mkdir 00
	cd 00;\
	git init;\
	touch test.txt;\
	git add test.txt;\
	git commit -m "initial commit"

01:
	mkdir 01
	cd 01;\
	git init;\
	touch test.txt;\
	git add test.txt;\


.PHONY: clean

clean:
	rm -rf $(DIRS)
