#!/bin/sh

echo '---> START: Generating a public key using RSA for Alice\n'
openssl pkey -in privkey-A.pem -out pubkey-A.pem -pubout

echo '---> END: Generating a public key using RSA for Alice\n'
echo '---> RESULT:\n'
openssl pkey -in pubkey-A.pem -pubin -text


echo '---> START: Generating a public key using RSA for Bob\n'
openssl pkey -in privkey-B.pem -out pubkey-B.pem -pubout

echo '---> END: Generating a public key using RSA for Bob\n'
echo '---> RESULT:\n'
openssl pkey -in pubkey-B.pem -pubin -text



