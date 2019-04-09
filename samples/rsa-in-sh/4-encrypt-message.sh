#!/bin/sh

openssl pkeyutl -encrypt -in message.txt -pubin -inkey pubkey-B.pem -out ciphertext.bin
echo "---> Encrypting message.txt successfully"
