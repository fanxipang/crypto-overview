#!/bin/sh

openssl dgst -sha1 message.txt
openssl dgst -sha256 message.txt
openssl dgst -sha512 message.txt