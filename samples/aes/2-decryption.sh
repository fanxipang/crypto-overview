#!/bin/sh

openssl enc -aes-128-ecb -d -in springciphered.txt -out spring_decrypted.txt \
-K 00112233445566778899aabbccddeeff -iv 010203040506070809

openssl enc -aes-128-ecb -d -in summerciphered.txt -out summer_decrypted.txt \
-K 00112233445566778899aabbccddeeff -iv 010203040506070809

echo '---> spring_decrypted:\n'
cat spring_decrypted.txt

echo '\n---> summer_decrypted:\n'
cat summer_decrypted.txt