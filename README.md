#Cross-chain Rebase Token

1. a protocol that allows user to deposit into a vault and in return, reciever rebase tokens 
that represents their underlying balance

2. Rebase token --> balanceOf function is dynamic to show the changing balance with time.
- Balance increases linearly with time
- mint tokens to our suers every time they perform action (minting, burning, transferring, or... bridging)

3. Interest rate 
- individually set an interst rate or each user based on some global interest rate of
the protocol at the time the user deposits into the vault.
- This global interest can only decrease to incetisive/reward early adopters.
- increase token adoption# ccip-rebase-token
