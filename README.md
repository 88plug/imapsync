# 88plug imapsync
Dockerfile for running imapsync

# Easy Way
```
docker run -ti --rm 88plug/imapsync \
	--host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
	--host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass --automap --skipemptyfolders --usecache
	
for Microsoft Exchange
--automap --skipemptyfolders --usecache --addheader --exchange2
```
# More Examples
```
docker run -it 88plug/imapsync --automap\
    --host1 mmailserver1 --user1 user1@mailserver1 --password1 user1pass \
    --host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
#From Mailcow to poste.io subfolder(domain-folder) for entire account
docker run -it 88plug/imapsync --regextrans2 's#(.*)#domain-folder.$1#' \
    --host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
    --host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
#From MailInABox to poste.io subfolder(domain-folder) for entire account
docker run -it 88plug/imapsync --regextrans2 's#(.*)#domain-folder.$1#' \
    --host1 mailserver1 --user1 user1@mailserver1 --password1 user1pass \
    --host2 mailserver2 --user2 user2@mailserver2 --password2 user2pass
```
