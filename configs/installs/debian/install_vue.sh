#!/bin/sh

# Cory Kehoe
# dev@corykey.com
# 2016

NODE_VERSION=4.x # v0.10.40, v2.0.2, v3.x, v4.x, v5.x, v6.x

curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | sudo -E bash - \
    && apt-get install -y nodejs \
    && npm install request

    # To compile NodeJS
    # && apt-get -y install g++ curl libssl-dev \
    # && apt-get install git-core && cd /usr/src \
    # && git clone https://github.com/corykey/node \
    # && cd node && git checkout $NODE_VERSION \
    # && ./configure \
    # && make && make install

npm install vue && npm install vue@csp \
    && npm install -g vue-cli \
    && npm install vue-router \
    && npm install vue-resource

# curl -sL http://nsolid-deb.nodesource.com/nsolid_setup_1.x | bash - \
#    && apt-get -y install nsolid-developer-bundle

echo "to run the vue app, use: npm run dev"
