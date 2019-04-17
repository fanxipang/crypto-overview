const crypo = require('crypto');
const ecies = require('ecies-parity');

const sk = crypo.randomBytes(32); // bytes
const pk = ecies.getPublic(sk);

const message = "Hello ECIES!";

const messageToSend = crypo.createHash("sha256").update(message).digest();

ecies.sign(sk, messageToSend).then((sig) => {
    console.log('---> signature: ', sig);

    ecies.verify(pk, messageToSend, sig).then(() => {
        console.log('---> Signature is ok');
    }).catch(() => {
        console.log('---> Bad signature');
    });
});
