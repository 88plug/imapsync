# Reference from https://imapsync.lamiral.info/INSTALL.d/INSTALL.Ubuntu.txt
FROM ubuntu:latest

# Maintainer Information
LABEL maintainer="88plug"
LABEL maintainer_website="https://88plug.com"

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y \
libauthen-ntlm-perl    \
libclass-load-perl     \
libcrypt-ssleay-perl   \
libdata-uniqid-perl    \
libdigest-hmac-perl    \
libdist-checkconflicts-perl \
libfile-copy-recursive-perl \
libio-compress-perl     \
libio-socket-inet6-perl \
libio-socket-ssl-perl   \
libio-tee-perl          \
libmail-imapclient-perl \
libmodule-scandeps-perl \
libnet-ssleay-perl      \
libpar-packer-perl      \
libreadonly-perl        \
libregexp-common-perl   \
libsys-meminfo-perl     \
libterm-readkey-perl    \
libtest-fatal-perl      \
libtest-mock-guard-perl \
libtest-pod-perl        \
libtest-requires-perl   \
libtest-simple-perl     \
libunicode-string-perl  \
liburi-perl             \
libtest-nowarnings-perl \
libtest-deep-perl       \
libtest-warn-perl       \
make                    \
cpanminus

RUN cpanm Mail::IMAPClient && cpanm JSON::WebToken && cpanm File::Tail

RUN apt-get install wget -y
RUN wget -N https://imapsync.lamiral.info/imapsync \
  https://imapsync.lamiral.info/prerequisites_imapsync \
  && cp imapsync /usr/bin/imapsync \
  && chmod +x /usr/bin/imapsync # just_a_comment_to_force_update 2018_09_13_14_44_03

ENTRYPOINT ["/usr/bin/imapsync"]
