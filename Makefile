all:
	env GO111MODULE=on go install -v .

.PHONY: clean update-modules
clean:
	rm -f bitumaddrgen

update-modules:
	env GO111MODULE=on go get -u
	env GO111MODULE=on go mod tidy -v
