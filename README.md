# <a href="https://88plug.com">88plug</a> imapsync
Dockerfile for running imapsync

# Easy Way
docker run -ti --rm 88plug/imapsync \
	--host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
	--host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
