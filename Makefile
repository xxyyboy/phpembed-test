PHP_DIR = $(shell php-config --prefix)

compile:
	gcc client.cc -o bin/client -I. `php-config --libs` `php-config --includes` -L$(PHP_DIR)/lib -lphp5

run:
	LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(PHP_DIR)/lib ./bin/client

gdb:
	LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(PHP_DIR)/lib gdb ./bin/client

valgrind:
	LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(PHP_DIR)/lib valgrind ./bin/client

clean:
	rm -fr bin/client
