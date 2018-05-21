.PHONY: clean
clean:
	./delete.sh *.log
	./delete.sh *.aux
	./delete.sh *~
	./delete.sh *.prv
	./delete.sh *.out
