#    Asymmetric Encryption

https://hackernoon.com/asymmetric-encryption-explained-using-chocolate-boxes-5a329ea6813e

https://youtu.be/AQDCe585Lnc

Encryption is about protecting data. That is the same idea when you lock your doors, or lock your closets with your keys to prevent someone else to reach your private stuffs.

Asymmetric Encryption uses pair keys (private key and public key) to encrypt the data when sharing through the Internet. The technique is that if the data is encrypted with a public key then it's only decrypted by a corresponding private key and vice versa. In order to make the data safe for a specific reciever, the sender might do two steps:

- Encrypt with the receiver's public key —> only this receiver can open the data
- Sign with the sender's private key —> this receiver can ensure that data comes from the desired sender. This step also can be done by using signed certificationes.

## Asymmetric algorithms

#### 1. ECDSA (Elliptic Curve Digital Signature Algorithm)

https://youtu.be/dCvB-mhkT0w

https://youtu.be/NF1pwjL9-DE

ECDSA uses a math fuction to map value A to value B, and it's difficult to find A from B though.

ECDSA keys' size is much smaller comparing to RSA with the same security level gain.

<u>**Exercise 1:**</u> 

>  _Check out an open source project which implements ECDSA and try to use this first. After that, take a look at its implementation._

#### 2. ECIES

> Not started yet

#### 3. RSA

> Not started yet