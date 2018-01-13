phony: configure

configure:
	# make sure this was run as sudo
	./sudo-check.sh
	# configure nodebotanist user
	./nodebotanist-user-setup.sh
	# configure network-- WiFi, network name, etc
	./network-setup
	# update packages
	# allow serial terminal, ssh
	# setup ssh keys for nodebotanist
	# lock pi user
	# reboot