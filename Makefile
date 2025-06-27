.PHONY: all
all: install

.PHONY: install
install:
	chmod +x ./dev/bin/*.sh
	./dev/bin/install.sh