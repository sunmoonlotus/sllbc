moment = require 'moment-timezone'
Block = require './block'



class Blockchain
  constructor: ->
    @chain = []
    @pendingTransactions = []
    @createNewBlock({nonce:10000})



  createNewTransaction: ({amount, sender, recipient}) ->
    newTransaction = {amount,sender,recipient}
    @pendingTransactions.push(newTransaction)
    (@lastBlock()?.index ? -1) + 1




  createNewBlock: (funcOptions={}) ->
    {nonce} = funcOptions
    newBlock = new Block {
      index: @chain.length + 1
      timestamp: moment.now()
      transactions: @pendingTransactions
      nonce
      previousBlockHash: @lastBlock()?.hash ? 'be15a9cd002ba1dc3238796c77fc19e6ced8816a7778391fbcf1e68f46dac0c3'
    }


    # clear for later use
    @pendingTransactions = []
    @chain.push(newBlock)
    newBlock



  lastBlock: ->
    @chain[@chain.length - 1]





  isChainValid: ->
    for block,idx in @chain when (idx > 1) 
      unless block.hashValid() and block.previousBlockHashValid(@chain[idx-1])
        return {valid:false,index:idx, blocks: @chain.length}
    {valid: true, index: idx, blocks: @chain.length}







module.exports = Blockchain
