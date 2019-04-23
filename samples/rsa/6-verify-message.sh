#!/bin/sh

openssl dgst -sha1 -verify pubkey-A.pem -signature signature.bin decrypted-message.txt
