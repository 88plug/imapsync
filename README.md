# 88plug imapsync
Dockerfile for running imapsync

Easiest way to use this Docker image is to
docker run -ti --rm 88plug/imap-sync \
	--host1 host1.tld --user1 user1@host1.tld --password1 user1pass \
	--host2 host2.tld --user2 user2@host2.tld --password2 user2pass
