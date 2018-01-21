# Raspi-recipe

I like the concept of bakery, but it wasn't updating fast enough and took up a lot of room. So I did the reasonable thing and cobbled together a bunch of bash scripts.

## Using

get these files on a raspi. Then set the variables in Makefile, and run `make configure`. The system will reboot and you can log in as a custom user.

## Variables

* `CUSTOM_USERNAME` : username you'd like to set
* `CUSTOM_USER_PASSWORD` : password for your custom user

### Notes

[Headless Raspi Setup](https://www.raspberrypi.org/forums/viewtopic.php?t=191252)

