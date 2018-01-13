# variables

CUSTOM_USERNAME = myuser
CUSTOM_USER_PASSWORD = mypassword

# targets

phony: configure

configure:
	# make sure this was run as sudo
	./sudo-check.sh
	# configure nodebotanist user
	./custom-user-setup.sh $(CUSTOM_USERNAME) $(CUSTOM_USER_PASSWORD)
	# configure network-- WiFi, network name, etc
	./network-setup
	# update packages
	# allow serial terminal, ssh
	# setup ssh keys for nodebotanist
	# lock pi user
	# reboot