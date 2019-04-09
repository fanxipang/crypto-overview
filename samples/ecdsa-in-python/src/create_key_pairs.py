from ecdsa import SigningKey
sk = SigningKey.generate()
vk = sk.get_verifying_key()
open("private.pem","wb").write(sk.to_pem())
open("public.pem","wb").write(vk.to_pem())

print('---> private key: %s' % (sk.to_pem()))
print('---> public key: %s' % (vk.to_pem()))