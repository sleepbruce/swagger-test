#!/bin/sh
set -xe
VERSION="8"
UPDATE="171"
BUILD="11"
PRODUCT="jdk"
JAVA_HOME="/usr/lib/java"
TIMEZONE="Asia/Shanghai"

JAVA_TMP_DIR="/tmp/${PRODUCT}1.${VERSION}.0_${UPDATE}"
JAVA_URL="http://download.oracle.com/otn-pub/java/jdk/"${VERSION}"u"${UPDATE}"-b"${BUILD}"/512cd62ec5174c3487ac17c61aaa89e8/${PRODUCT}-"${VERSION}"u"${UPDATE}"-linux-x64.tar.gz"
JAVA_PATH="/usr/lib/java-${VERSION}-oracle"

#PREPARE
#Linux Version
SIG="A"

# Alpine
if [ $SIG = "A" ]; then
  GLIBC_VERSION="2.27-r0"
  apk update
  apk upgrade
  apk add --update --progress openssl curl tzdata
  for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION} glibc-i18n-${GLIBC_VERSION}; do
    curl -sSL https://github.com/andyshinn/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk;
    apk add --allow-untrusted --update /tmp/${pkg}.apk
  done
fi
