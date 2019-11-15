#Blockchain = require './blockchain'
#bitcoin = new Blockchain()
bitcoin = require './bitcoin'

bitcoin.createNewBlock({hash:'DDHKdESe3sEK',nonce:2252,previousBlockHash:'dsdeh3283dws'})
bitcoin.createNewTransaction({amount:100,sender:'ALEXHT845SJ5TKCJ2',recipient:'JENN5BG5DF6ssHT8NG9'})
console.log bitcoin,bitcoin.chain[0].transactions
