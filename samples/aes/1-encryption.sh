#!/bin/sh

echo '---> spring: '
cat spring.txt
echo '\n---> summer: '
cat summer.txt

openssl enc -aes-128-ecb -e -in spring.txt -out springciphered.txt \
-K 00112233445566778899aabbccddeeff -iv 010203040506070809

openssl enc -aes-128-ecb -e -in summer.txt -out summerciphered.txt \
-K 00112233445566778899aabbccddeeff -iv 010203040506070809

echo '\n---> springciphered:\n'
hexdump springciphered.txt

echo '\n---> summerciphered:\n'
hexdump summerciphered.txt