.PHONY: install
install: setup/mitamae alp pt-query-digest
	./install_bashrc.sh

.PHONY: setup/mitamae
setup/mitamae: mitamae
	sudo ./mitamae local isucon-recipie.rb

mitamae:
	# linuxバイナリ
	curl -Lo m.tar.gz https://github.com/itamae-kitchen/mitamae/releases/download/v1.11.7/mitamae-$(shell uname -m)-linux.tar.gz
	tar xf m.tar.gz
	mv mitamae* mitamae
	chmod +x mitamae
	rm -f m.tar.gz

alp:
	# linux amd64バイナリ
	curl -Lo a.zip https://github.com/tkuchiki/alp/releases/download/v1.0.3/alp_linux_amd64.zip
	unzip a.zip
	sudo install alp /usr/loca/bin/
	rm -f a.zip

pt-query-digest:
	# ubuntu20.04バイナリ
	curl -Lo pt-query-digest.deb https://www.percona.com/downloads/percona-toolkit/3.2.1/binary/debian/focal/x86_64/percona-toolkit_3.2.1-1.focal_amd64.deb
	sudo dpkg -i pt-query-digest.deb

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

