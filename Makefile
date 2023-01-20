GTEST_DIR=../googletest

CFLAGS += -I$(GTEST_DIR)/googletest/include -I./include
LDFLAGS += -L$(GTEST_DIR)/build/lib -lgtest -lpthread

run_test: build_test
	./run_test

build_test:
	g++ -o run_test test/main.cc test/add_test.cc src/add.c $(CFLAGS) $(LDFLAGS)

clean:
	$(RM) run_test

.PHONY: run_test
