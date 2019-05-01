# One Way Encryption

_Links_

> The difference between encryption, hashing, and salting
>
> https://gooroo.io/GoorooTHINK/Article/13023/The-difference-between-encryption-hashing-and-salting/2085#.XMCFw6ZS924
>
> Applied Cryptography: Hash Functions - Part 1, 2
>
> https://youtu.be/IWMESE6OfHw
>
> https://youtu.be/sGcMfKlw9n8

One way encryption is also called one way hash function. A hash function is a map that transforms data of arbitrary size into a fixed sized. Hashing is useful when storing things which you don't need to read back, but you need to check. Passwords are the primary example.

## SHA (Secure Hash Algorithm)

_Links_

> SHA: Secure Hashing Algorithm - Computerphile
>
> https://youtu.be/DMtFhACPnTY
>
> Secure Hash Algorithms
>
> <https://en.wikipedia.org/wiki/Secure_Hash_Algorithms>

Creating an SHA digest of a file using OpenSSL

```bash
# see which digests are actually available
openssl dgst -h

# SHA1 digest
openssl dgst -sha1 <filename>
```



**SHA-1** produces a 160-bit hash value (a hex with 40 digit long). It was designed by NSA, and is a FIPS standard. SHA1 was not acceptable today (after 2017 by Microsoft, Google, Apple, and Mozilla). 

Applications: SSL, SSH (cryptography), Git (data integrity), etc.

**SHA-2** is a family of six hash functions with hash values are 224, 256, 384, or 512.

## MD5 (Message Digest algorithm 5)

_Links_

> MD5
>
> <https://en.wikipedia.org/wiki/MD5>

Create a MD5 digest of a file using OpenSSL

```bash
openssl dgst -md5 <filename>
```

MD5 produces a 128-bit hash value. MD5 faced to security issues due to its digest long that it can be exploited by brute force to find the message from its digest with a normal computer.