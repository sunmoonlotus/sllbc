moment = require 'moment-timezone'

class Blockchain
  constructor: ->
    @chain = []
    @newTransactions = []




  createNewBlock: ({hash,nonce,previousBlockHash}) ->
    newBlock = {
      index: @chain.length + 1
      timestamp: moment.now()
      transactions: @newTransactions
      nonce
      hash
      previousBlockHash
    }
    # clear for later use
    @newTransactions = []
    newBlock
