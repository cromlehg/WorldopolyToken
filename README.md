![Worldopoly Token](logo.png "Worldopoly Token")

# Worldopoly Token smart contract

* _Standard_                                                                            : [ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)
* _[Name](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#name)_            : Worldopoly
* _[Ticker](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#symbol)_        : WPT
* _[Decimals](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md#decimals)_    : 18
* _Emission_                                                                            : Mintable
* _Crowdsales_                                                                          : 2
* _Fiat dependency_                                                                     : No
* _Tokens locked_                                                                       : Yes

## Smart-contracts description

Extended tokens are minted after the all stages are finished.  
There is a special function to return 3rd party tokens that were sent by mistake (function retrieveTokens()).  
Each stage has a direct minting function in wei. This is made to support the external payment gateways.

### Contracts contains
1. _Token_ - Token contract
2. _PreITO_ - PreITO contract
3. _ITO_ - ITO contract
4. _Configurator_ - contract with main configuration for production

### How to manage contract
To start working with contract you should follow next steps:
1. Compile it in Remix with enamble optimization flag and compiler 0.4.18
2. Deploy bytecode with MyEtherWallet. Gas 5100000 (actually 5073514).
3. Call 'deploy' function on addres from (3). Gas 4000000 (actually 3979551). 

Contract manager must call finishMinting after each crowdsale milestone!
To support external mint service manager should specify address by calling _setDirectMintAgent_. After that specified address can direct mint tokens by calling _mintTokensByETHExternal_ and _mintTokensExternal_.

### How to invest
To purchase tokens investor should send ETH (more than minimum 0.1 ETH) to corresponding crowdsale contract.
Recommended GAS: 250000, GAS PRICE - 21 Gwei.

### Wallets with ERC20 support
1. MyEtherWallet - https://www.myetherwallet.com/
2. Parity 
3. Mist/Ethereum wallet

EXODUS not support ERC20, but have way to export key into MyEtherWallet - http://support.exodus.io/article/128-how-do-i-receive-unsupported-erc20-tokens

Investor must not use other wallets, coinmarkets or stocks. Can lose money.

## Tokens distribution

* _Team tokens percent_         : 15%
* _Marketing tokens percent_    :  5%
* _Reserved tokens percent_     :  5%
* _For sale tokens percent_     : 75%

## AirDrop feature
* Contains airdrop support contracts

## Main network configuration

* _Marketing tokens wallet_     : 
* _Team tokens wallet_          :
* _Reserved tokens wallet_      : 
* _Contracts manager_           :

### Links
1. _Token_ -
2. _PreITO_ -
3. _ITO_ -

### Features
* Manually mint tokens by owner or sale agent at any time until token minting finished. 
* Manually mint tokens in ether value by owner or sale agent at corresponding sale contract during current sale processing.  

### Crowdsale stages

#### PreITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 3184 Tokens
* _Hardcap_                     : 6282 ETH
* _Start_                       : Mon, 23 Apr 2018 00:00:00 GMT
* _Wallet_                      : 

##### Milestones
1. 9 days, bonus +20%
2. 10 days, bonus +15%
3. 10 days, bonus +10%

#### ITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 3184 Tokens
* _Hardcap_                     : 37 697 ETH
* _Start_                       : Fri, 25 May 2018 00:00:00 GMT
* _Period_                      : 44 days
* _Wallet_                      : 
 
##### Bonuses
First 20% of hardcap +5% tokens bonus

#### Value bonuses for all public stages
* 3 eth - 1%
* 6 eth - 1.5%
* 9 eth - 2%
* 12 eth - 2.5%
* 15 eth - 3%
* 21 eth - 4%
* 30 eth - 5%
* 48 eth - 6%
* 75 eth - 7%
* 120 eth - 8%
* 150 eth - 9%
* 225 eth - 10%
* 300 eth - 11%
* 450 eth - 12%
* 600 eth - 13%
* 900 eth - 15%

* 
