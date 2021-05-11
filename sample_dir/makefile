DIRS=00 01 02 03 03_remote.git 04 04_remote.git 05 05_remote.git

all:$(DIRS)

%_remote.git:
	git init --bare $@

00:
	git init 00;cd 00;\
	touch test.txt;\

01:
	git init 01;cd 01;\
	touch test.txt;\
	git add test.txt;\
	
02:
	git init 02;cd 02;\
	touch test.txt;\
	git add test.txt;\
	git commit -m "initial commit"

03: 03_remote.git
	git init 03;cd 03;\
	touch test.txt;\
	git add test.txt;\
	git commit -m "initial commit";\
	git branch -M main;\
	git remote add origin ../03_remote.git;\
	git push -u origin main

04: 04_remote.git
	git init 04;cd 04;\
	touch test.txt;\
	git add test.txt;\
	git commit -m "initial commit";\
	git branch -M main;\
	git remote add origin ../04_remote.git;\
	git push -u origin main;\
	touch test2.txt;\
	git add test2.txt;\
	git commit -m "adds file";\

05: 05_remote.git
	git init 05;cd 05;\
	touch test.txt;\
	git add test.txt;\
	git commit -m "initial commit";\
	git branch -M main;\
	git remote add origin ../05_remote.git;\
	git push -u origin main;\
	touch test2.txt;\
	git add test2.txt;\

.PHONY: clean

clean:
	rm -rf $(DIRS)
