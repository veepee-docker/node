# Copyright (c) 2019 , Veepee
#
# Permission  to use,  copy, modify,  and/or distribute  this software  for any
# purpose  with or  without  fee is  hereby granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS  SOFTWARE INCLUDING ALL IMPLIED  WARRANTIES OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL  DAMAGES OR ANY DAMAGES  WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING OUT  OF  OR IN  CONNECTION WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

FROM vptech/debian:jessie

ENV DEBIAN_FRONTEND="noninteractive" \
    TZ="Europe/Amsterdam"

# https://github.com/nodesource/distributions
RUN curl --silent "https://deb.nodesource.com/gpgkey/nodesource.gpg.key" | \
      apt-key --keyring /etc/apt/trusted.gpg.d/nodejs-keyring.gpg add - && \
    echo "deb https://deb.nodesource.com/node_4.x jessie main" > \
      /etc/apt/sources.list.d/nodejs.list && \
    apt-get update  -qq && \
    apt-get upgrade -qq -y && \
    apt-get install -qq -y \
      nodejs \
      rlwrap && \
    apt-clean

HEALTHCHECK NONE
# EOF
