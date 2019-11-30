SHA256 = require 'crypto-js/sha256'

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