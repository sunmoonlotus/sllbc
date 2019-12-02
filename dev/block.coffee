SHA256 = require 'crypto-js/sha256'





class Transaction
  constructor: (funcOptions) ->
    {@amount,@sender, @recipient} = funcOptions


  calculateHash: ->
    SHA256(@amount.toString() + @sender + @recipient)




class Block
  constructor: (funcOptions) ->
    {@index, @timestamp, @transactions, @previousBlockHash=''} = funcOptions
    @hash = @calculateHash()
    @data = @transactions 




  calculateHash: ->
    SHA256(@index + @previousBlockHash + @timestamp + JSON.stringify(@data)).toString()



  hashValid: ->
    @hash is @calculateHash()




  previousBlockHashValid: (previousBlock) ->
    @previousBlockHash is previousBlock.hash





    


module.exports = Block