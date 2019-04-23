# Symmetric Encryption

_Links_

> Introduction to Basic Cryptography: Symmetric Key Cryptography
>
> https://youtu.be/10BX3zOr7wk
>
> Symmetric Key Encryption - why, where and how it’s used in banking
>
> <https://www.cryptomathic.com/news-events/blog/symmetric-key-encryption-why-where-and-how-its-used-in-banking>

Symmetric Encryption ues the same key for encrypting and decrypting

There are two types of symmetric encryption: 

- **stream ciphers** such as `RC4, A5/1`: produce a pseudo-random stream of bits that you XOR with your plaintext
- and, **block ciphers** such as `DES, AES`: used to encrypt data one block at a time

Since symmetric encryption has a better performance and faster speed (compared to asymmetric), it is typically used for encrypting large amount of data, e.g. for database encryption.

## AES (Advanced Encryption Standard)

_Links_

> AES: Advanced Encryption Standard - a Conceptual Review
>
> https://youtu.be/liKXtikP9F0

AES is a replacement of DES (Data Encryption Standard) since DES's key size is too small and its algorithm is not effective.

AES follows a block cipher algorithm that it splits the plain text into small blocks with a fixed size (equals with AES's secret key). Each block is sequencely ecrypted (using XOR) by the key.



### Exercise 1

```
Practice using AES with OpenSSL
```

_Links_

> Crypto & Block Cipher Modes (OpenSSL, AES 128, ECB, CBC)
>
> <https://youtu.be/t0pREiDO7_g>
>
> How to use OpenSSL to encrypt/decrypt files?
>
> <https://stackoverflow.com/questions/16056135/how-to-use-openssl-to-encrypt-decrypt-files>

### Excercise 2

```
Read RFC-3565
> Link: https://tools.ietf.org/html/rfc3565
```

