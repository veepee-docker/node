# Copyright (c) 2018 Vente-Privée
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM vpgrp/debian:stretch

ENV DEBIAN_FRONTEND="noninteractive" \
    TZ="Europe/Amsterdam"

# https://github.com/nodesource/distributions
# https://yarnpkg.com/en/docs/install
RUN curl --silent "https://deb.nodesource.com/gpgkey/nodesource.gpg.key" | \
      apt-key --keyring /etc/apt/trusted.gpg.d/nodejs-keyring.gpg add - && \
    curl --silent "https://dl.yarnpkg.com/debian/pubkey.gpg" | \
      apt-key --keyring /etc/apt/trusted.gpg.d/yarn-keyring.gpg add - && \
    echo "deb https://deb.nodesource.com/node_7.x stretch main" > \
      /etc/apt/sources.list.d/nodejs.list && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" > \
      /etc/apt/sources.list.d/yarn.list && \
    apt-get update  -qq && \
    apt-get upgrade -qq -y && \
    apt-get install -qq -y \
      bzip2 \
      nodejs \
      rlwrap \
      yarn && \
    apt-clean

HEALTHCHECK NONE
# EOF
