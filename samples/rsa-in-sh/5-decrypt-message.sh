#!/bin/sh

openssl pkeyutl -decrypt -in ciphertext.bin -inkey privkey-B.pem -out decrypted-message.txt
echo "---> Decrypting message.txt successfully\n"

echo "---> CONTENT:\n"
cat decrypted-message.txt