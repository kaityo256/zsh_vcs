DIRS=00 01 02

all:$(DIRS)

00:
	mkdir 00;cd 00;\
	git init;\
	touch test.txt;\

01:
	mkdir 01;cd 01;\
	git init;\
	touch test.txt;\
	git add test.txt;\
	
02:
	mkdir 02;cd 02;\
	git init;\
	touch test.txt;\
	git add test.txt;\
	git commit -m "initial commit"


.PHONY: clean

clean:
	rm -rf $(DIRS)
