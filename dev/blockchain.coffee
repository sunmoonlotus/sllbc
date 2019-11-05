class Blockchain
  constructor: ->
    @chain = []
    @newTransactions = []




  createNewBlock: ({nonce,previousBlockHash,hash}) ->
