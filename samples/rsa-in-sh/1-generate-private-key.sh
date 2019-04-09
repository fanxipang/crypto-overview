#!/bin/sh

echo '---> START: Generating a private key using RSA for Alice\n'
openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -pkeyopt rsa_keygen_pubexp:3 -out privkey-A.pem

echo '---> END: Generating a private key using RSA for Alice\n'
echo '---> RESULT:\n'
openssl pkey -in privkey-A.pem -text

echo '---> START: Generating a private key using RSA for Bob\n'
openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -pkeyopt rsa_keygen_pubexp:3 -out privkey-B.pem

echo '---> END: Generating a private key using RSA for Bob\n'
echo '---> RESULT:\n'
openssl pkey -in privkey-B.pem -text