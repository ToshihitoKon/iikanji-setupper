RCPURL := https://gist.github.com/ToshihitoKon/02814e4d14a0c9f7ae76abd3d6a51a25/raw/isucon-recipie.rb

.PHONY: alp
install: mitamae alp
	@echo "source ./isucon-benri.bashrc"

setup/mitamae: mitamae
	curl -Lo isucon-recipie.rb $(RCPURL)
	./mitamae local isucon-recipie.rb

mitamae:
	curl -Lo m.tar.gz https://github.com/itamae-kitchen/mitamae/releases/download/v1.11.7/mitamae-$(shell uname -m)-linux.tar.gz
	tar xf m.tar.gz
	mv mitamae* mitamae
	chmod +x mitamae
	rm -f m.tar.gz

setup/alp:
	curl -Lo a.zip https://github.com/tkuchiki/alp/releases/download/v1.0.3/alp_linux_amd64.zip
	unzip a.zip
	install alp /usr/loca/bin/alp
	rm -f a.zip

.PHONY: clean
clean:
	rm -f mitamae*
	rm -f m.tar.gz

.PHONY: check
check:
ifneq ($(shell id -u), 0)
	@echo "not root"
	@exit 1
endif

