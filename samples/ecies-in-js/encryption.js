const crypto = require('crypto');
const ecies = require('ecies-parity');

const bobSk = crypto.randomBytes(32);
const bobPk = ecies.getPublic(bobSk);

const aliceSk = crypto.randomBytes(32);
const alicePk = ecies.getPublic(aliceSk);

ecies.encrypt(alicePk, Buffer.from("Bob sends a message to Alice")).then((ciphertext) => {
    // Alice recieves a message
    ecies.decrypt(aliceSk, ciphertext).then((originMsg) => {
        console.log('---> Bob\'s message: ', originMsg.toString());
    });
});


ecies.encrypt(bobPk, Buffer.from("Alice sends a message to Bob")).then((ciphertext) => {
    // Bod recives a message 
    ecies.decrypt(bobSk, ciphertext).then((originMsg) => {
        console.log('---> Alice\'s message: ', originMsg.toString())
    });
});

// ECDH
ecies.derive(bobSk, alicePk).then(function(sharedKey1) {
    ecies.derive(aliceSk, bobPk).then(function(sharedKey2) {
        console.log("Both shared keys are equal:", sharedKey1, sharedKey2);
    });
});
