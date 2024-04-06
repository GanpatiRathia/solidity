pragma solidity ^0.8.0;

contract LedgerBalance {
   mapping(address => uint) public balances;

   function updateBalance(uint newBalance) public {
      balances[msg.sender] = newBalance;
   }
}
contract Updater {
   function updateBalance() public returns (uint) {
      LedgerBalance ledgerBalance = new LedgerBalance();
      ledgerBalance.updateBalance(10);
      return ledgerBalance.balances(address(this));
   }
}

Sr.No.	Special Variable & Description
1	
blockhash(uint blockNumber) returns (bytes32)

Hash of the given block - only works for 256 most recent, excluding current, blocks.

2	
block.coinbase (address payable)

Current block miner's address.

3	
block.difficulty (uint)

current block difficulty.

4	
block.gaslimit (uint)

Current block gaslimit.

5	
block.number (uint)

Current block number.

6	
block.timestamp

Current block timestamp as seconds since unix epoch.

7	
gasleft() returns (uint256)

Remaining gas.

8	
msg.data (bytes calldata)

Complete calldata.

9	
msg.sender (address payable)

Sender of the message (current call).

10	
msg.sig (bytes4)

First four bytes of the calldata (i.e. function identifier)

11	
msg.value (uint)

Number of wei sent with the message.

12	
now (uint)

Current block timestamp (alias for block.timestamp).

13	
tx.gasprice (uint)

Gas price of the transaction.

14	
tx.origin (address payable)

Sender of the transaction (full call chain).