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

* _Team tokens wallet_          :
* _Marketing tokens wallet_     : 
* _Reserved tokens wallet_      : 
* _Contracts manager_           :

### Links
1. _Token_ -
2. _PreITO_ -
3. _ITO_ -

### Features
* Manually mint tokens by owner or sale agent at any time until token minting finished. 
* Manually mint tokens in ether value by owner or sale agent at corresponding sale contract during current sale processing.  
* setVestingPercent in token can lock percent of initial tokenholders balances

### Crowdsale stages

#### PreITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 3184 Tokens
* _Hardcap_                     : 6282 ETH
* _Start_                       : 23 Apr 2018 00:00:00 GMT
* _Wallet_                      : 

##### Milestones
1. 10 days, bonus +20%
2. 10 days, bonus +15%
3. 10 days, bonus +10%

#### ITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 3184 Tokens
* _Hardcap_                     : 37 697 ETH
* _Start_                       : 25 May 2018 00:00:00 GMT
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


## Ropsten network configuration 

### Links
1. _Token_ - https://ropsten.etherscan.io/address/0xed3255bdc91aecf21e595a4ed7ee0a15543ebc1d
2. _PreITO_ - https://ropsten.etherscan.io/address/0x0293679abedbd298f4d7021a076a780c0c6c63a1
3. _ITO_ - https://ropsten.etherscan.io/address/0x76c35ead0ca8f90875903c906c8d3c88673f29ce


### Crowdsale stages

#### PreITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 3184 Tokens
* _Hardcap_                     : 6282 ETH
* _Start_                       : 13 Apr 2018 00:00:00 GMT
* _Wallet_                      : 0x8fD94be56237EA9D854B23B78615775121Dd1E82

##### Milestones
1. 10 days, bonus +20%
2. 10 days, bonus +15%
3. 10 days, bonus +10%

##### Purchasers

* 1 ETH => 3,820.8 tokens, gas = 166780
https://ropsten.etherscan.io/tx/0x08d66ce0c0c9820178b40d8be7ce0e8478b853829e4842757adac4f46f013a23

* 1 ETH => 3,661.6 tokens, gas = 80308
https://ropsten.etherscan.io/tx/0xc8853dfce81cc766f9aa293505159997f4c3e4e619a98eeb369195929848a689

* 0.01 ETH => rejected txn, less then mininal investment limit, gas = 22598
https://ropsten.etherscan.io/tx/0x10974be15194bc6f961819dfa2362b0e2df47e32219bff8ef81c778306682045

##### Service operations

* setStart, gas = 27978
https://ropsten.etherscan.io/tx/0xad373bb58ef6d1866238b3f7400397fb426ecd5b000117215aeb75a7df29e97f

* finish, gas = 30571
https://ropsten.etherscan.io/tx/0x074baf4b94805d61b5a98906414dfc468792463230f7568c49a0689e7ea502b8

#### ITO
* _Minimal insvested limit_     : 0.1 ETH
* _Base price_                  : 1 ETH = 3184 Tokens
* _Hardcap_                     : 5 ETH
* _Start_                       : 13 Apr 2018 00:00:00 GMT
* _Period_                      : 44 days
* _Wallet_                      : 0x8fD94be56237EA9D854B23B78615775121Dd1E82
* _Team tokens wallet_          : 0xaa8ed6878a202eF6aFC518a64D2ccB8D73f1f2Ca
* _Marketing tokens wallet_     : 0x24a7774d0eba02846580A214eeca955214cA776C
* _Reserved tokens wallet_      : 0x470a2D1105EaE6aAe879623357F615Ab9cbf906E
* _Team tokens percent_         : 15%
* _Marketing tokens percent_    :  5%
* _Reserved tokens percent_     :  5%

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

##### Purchasers

* 1 ETH => 3,184 tokens, gas = 107307
https://ropsten.etherscan.io/tx/0xfebd23dd2c57b0d815a2fa615e9581fdfbaff54e24f7e84e9c0ce44053cfca54

* 3.1 ETH => 9,969.104 tokens, gas = 79019
https://ropsten.etherscan.io/tx/0x600675965a3de21823325a5c940f36d1b0cfb0b1db93379346ae9df3e9b3d215

* 1 ETH => rejected txn, ITO is finished, gas = 36852
https://ropsten.etherscan.io/tx/0x56ee1352c9e4c3f2ed101ebff0f15f5f4551884f14da5e6446688d58adf3215a

##### Service operations

* finish, gas = 203751
https://ropsten.etherscan.io/tx/0x407c823f63d891eb67dce7b1fc36e82c23b6322b22f59cc58302a89f4d300870


### Token holders
https://ropsten.etherscan.io/token/0xed3255bdc91aecf21e595a4ed7ee0a15543ebc1d#balances
