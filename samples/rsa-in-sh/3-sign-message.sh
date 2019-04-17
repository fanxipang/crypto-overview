#!/bin/sh

# This signature will be sent to Bob to verify whether the message comes from Alice
openssl dgst -sha1 -sign privkey-A.pem -out signature.bin message.txt
echo "---> Signing message.txt successfully"
