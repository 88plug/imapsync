# 88plug imapsync
Dockerfile for running imapsync for email migrations

# Easy Way (add --dry to test any setting)

```
docker run -ti --rm 88plug/imapsync --automap --skipemptyfolders --usecache \
	--host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
	--host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
```

# for Microsoft Exchange

```
docker run -ti --rm 88plug/imapsync --automap --skipemptyfolders --usecache --addheader --exchange2 \
	--host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
	--host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
```

# From Mailcow to new server poste.io account

```
docker run -it 88plug/imapsync --automap \
    --host1 mmailserver1 --user1 user1@mailserver1 --password1 user1pass \
    --host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
```

# From Mailcow to poste.io subfolder(domain-folder) for entire account

```
docker run -it 88plug/imapsync --regextrans2 's#(.*)#domain-folder.$1#' \
    --host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
    --host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
```

# From MailInABox to poste.io subfolder(domain-folder) for entire account

```
docker run -it 88plug/imapsync --regextrans2 's#(.*)#domain-folder.$1#' \
    --host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
    --host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
```
