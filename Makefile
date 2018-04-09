# variables

CUSTOM_USERNAME = test
CUSTOM_USER_PASSWORD = test 

# targets

phony: configure

configure:
	# make sure this was run as sudo
	./sudo-check.sh
	# configure nodebotanist user
	./custom-user-setup.sh $(CUSTOM_USERNAME) $(CUSTOM_USER_PASSWORD)
	# configure network-- WiFi, network name, etc
	./network-setup.sh
	# update packages
	./update.sh
	# allow serial terminal, ssh
	# setup ssh keys for nodebotanist
	# lock pi user
	./remove-pi-user.sh
	# reboot