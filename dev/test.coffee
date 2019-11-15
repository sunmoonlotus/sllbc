Blockchain = require './Blockchain'

bitcoin = new Blockchain()
bitcoin.createNewBlock({hash:'DEHKIHKESEK',nonce:2389,previousBlockHash:'78dslhe8h328'})
console.log bitcoin