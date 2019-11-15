moment = require 'moment-timezone'

class Blockchain
  constructor: ->
    @chain = []
    @pendingTransactions = []



  createNewTransaction: ({amount, sender, recipient}) ->
    newTransaction = {amount,sender,recipient}
    @pendingTransactions.unshift(newTransaction)
    @lastBlock()['index'] + 1




  createNewBlock: ({hash,nonce,previousBlockHash}) ->
    newBlock = {
      index: @chain.length + 1
      timestamp: moment.now()
      transactions: @pendingTransactions
      nonce
      hash
      previousBlockHash
    }
    # clear for later use
    @pendingTransactions = []
    @chain.unshift(newBlock)
    newBlock



  lastBlock: ->
    @chain[0]






module.exports = Blockchain
