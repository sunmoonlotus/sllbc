#Blockchain = require './blockchain'
#bitcoin = new Blockchain()
bitcoin = require './bitcoin'
moment = require 'moment-timezone'

bitcoin.createNewTransaction({amount:100,sender:'ALEXHT845SJ5TKCJ2',recipient:'JENN5BG5DF6ssHT8NG9'})
bitcoin.createNewBlock({hash:'jjDDHKdESe3sEK',nonce:3252,previousBlockHash:'ssdssdeh3283dws'})
console.log {time:moment().hour(), bitcoin,first:bitcoin.chain[0].transactions}
