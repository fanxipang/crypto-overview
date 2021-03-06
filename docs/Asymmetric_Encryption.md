#    Asymmetric Encryption

[TOC]

Let's start!

*Links:*

> [1]. Asymmetric Encryption explained with the help of chocolate boxes.
>
> https://hackernoon.com/asymmetric-encryption-explained-using-chocolate-boxes-5a329ea6813e 
>
> [2]. Asymmetric encryption - Simply explained
>
> https://youtu.be/AQDCe585Lnc

Encryption is about protecting data. That is the same idea when you lock your doors, or lock your closets with your keys to prevent someone else to reach your private stuffs.

Asymmetric Encryption uses pair keys (private key and public key) to encrypt the data when sharing through the Internet. The technique is that if the data is encrypted with a public key then it's only decrypted by a corresponding private key and vice versa. In order to make the data safe for a specific reciever, the sender might do two steps:

- Encrypt with the receiver's public key —> only this receiver can open the data
- Sign with the sender's private key —> this receiver can ensure that data comes from the desired sender. This step also can be done by using signed certificationes.

## 1. ECDSA (Elliptic Curve Digital Signature Algorithm)

*Links:*

>  [1]. Elliptic Curve Cryptography Overview
>
> https://youtu.be/dCvB-mhkT0w
>
> [2]. Elliptic Curves - Computerphile
>
> https://youtu.be/NF1pwjL9-DE

ECDSA uses a math fuction to map value A to value B, and it's difficult to find A from B though.

ECDSA keys' size is much smaller comparing to RSA with the same security level gain.

### Exercise 1

```
Check out an open source project which implements ECDSA in Python and try to use this first. After that, take a quick look at its implementation
```

*Links:*

> pure-python ECDSA signature/verification
>
> <https://github.com/warner/python-ecdsa>



## 2. RSA (Rivest-Shamir-Adleman)

*Links:*

> RSA (cryptosystem)
>
> https://en.wikipedia.org/wiki/RSA_(cryptosystem)

RSA is one of the first asymmetric encryption algorithm (since 1978).

RSA's expression:

$(m^e)^d \equiv m (mod \space n) \space  (0 \leqslant m<n)​$

The pubic key is represented by `n` and `e`; and, the private is represented by `d`. m represents the message. 

This alogrithm includes 4 steps: key generation, key distribution, encryption and decryption.

### Exercise 2

```
Use a software which implements RSA algorithm and try to generate keys, encrypt/decrypt, and sign/verify a message with CLI
```

*Links:*

> RSA Key Generation, Signatures and Encryption using OpenSSL
>
> https://www.youtube.com/watch?v=RE9OSl_yuvc



### Exercise 3

```
Create a program in C which uses a librabry to generate keys, encrypt/decrypt, and sign/verify a message
```



### Exercise 4

```
Implement RSA algorithm using RFC-8017 in C
```

*Links:*

>  [1]. Journey into cryptography
>
> https://www.khanacademy.org/computing/computer-science/cryptography
>
> [2]. RFC-8017
>
> https://tools.ietf.org/html/rfc8017
>
> [2]. LibTomCrypt
>
> https://github.com/libtom/libtomcrypt



## 3. ECIES (Elliptic Curve Integrated Encryption Scheme)

*Links:*

> [1]. Elliptic Curve Integrated Encryption Scheme
>
> https://www.cryptopp.com/wiki/Elliptic_Curve_Integrated_Encryption_Scheme
>
> [2]. A Comparison of the Standardized Versions of ECIES
>
> http://digital.csic.es/bitstream/10261/32674/1/Gayoso_A%20Comparison%20of%20the%20Standardized%20Versions%20of%20ECIES.pdf)
>
> [3]. A Proposal for an ISO Standard for Public Key Encryption
>
> https://www.shoup.net/papers/iso-2_1.pdf

ECC (Elliptic Curve Cryptography) can be used for encryption, generating digital signature and key exchanges. ECIES is an algorithm related to encryption which bases on ECC.

The following are several fundamental concepts in cryptography:

1. *Symmetric key encryption*: a symmetric key encryption schema consist two algorithms: encryption and decryption.
2. *Public-key encryption*: a public-key encryption schema consist three algorithms: key generation, encryption and decryption.
3. *Key encapsulation*: uses public-key cryptography to encrypt a key that can then be used to encrypt the actual payload using symmetric key cryptography.
4. *Data encapsulation*: provides a "digital envelope" that protects the secrecy and integrity of data using symmetric-key cryptographic techniques
5. *Hybrid encryption*: compose a secure key encapsulation mechanism and a secure data encapsulation mechanism so as to obtain a secure public-key encryption scheme.

### Exercise 5

```
Find an open source project implementing ECIES and play around with it
```

*Links*

> https://github.com/sigp/ecies-parity

### Exercise 6

```
Read RFC of ECC
```

*Links*

> Fundamental Elliptic Curve Cryptography Algorithms (RFC-6090)
>
> https://tools.ietf.org/html/rfc6090>