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
1. _Token_ - https://ropsten.etherscan.io/address/0xcb97df60e1bc485bf882bf3d8370589bbb64c91b
2. _PreITO_ - https://ropsten.etherscan.io/address/0xd51c2fcc525bd782b4f7a5b241c591bce2e7e99c
3. _ITO_ - https://ropsten.etherscan.io/address/0x9c5834c43b2ed54a12b798d8fcf2580102540717


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

* 1 ETH => 3,820.8 tokens, gas = 151318
https://ropsten.etherscan.io/tx/0x1c54ed23a51f50e7025d997ba9e2fe15e291474b6f1f353a829239b12df400bd

* 1 ETH => 3,661.6 tokens, gas = 93545
https://ropsten.etherscan.io/tx/0x6b3ce1d103ba7aa96259ed204017c932455632e94a2678b961aa50bfd53f160f

* 0.01 ETH => rejected txn, less then mininal investment limit, gas = 22598
https://ropsten.etherscan.io/tx/0x5b84546d85738483bb8a672399d419925eff5e648b4bdeb39f6054e8cb0b6367

##### Service operations

* setStart, gas = 28042
https://ropsten.etherscan.io/tx/0xcb2546a73a6073663772109713c9f6508835d6b2f61dbb83a2366ca0d043b04a

* finish, gas = 30571
https://ropsten.etherscan.io/tx/0x8a4d99ea2884f2c283e3dd2a9e5f3640f4cef09c2c51b1983df28542754a8c87

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

* 1 ETH => 3,184 tokens, gas = 76845
https://ropsten.etherscan.io/tx/0x8373d4821a2c5a480dd33b8d5bfe2be7b17d1f80e3d6dcff6a97eae9c1dd349c

* 3.1 ETH => 9,969.104 tokens, gas = 63557
https://ropsten.etherscan.io/tx/0x79bcf3a597111f7119dbab8b0785a616ef22c664bd794fb236beec4146e2cd78

* 1 ETH => rejected txn, ITO is finished, gas = 36852
https://ropsten.etherscan.io/tx/0xffcafbc5e2cd79093c4fa640611b6b0b580a60913bec61ea05204b1316074458

##### Service operations

* finish, gas = 172365
https://ropsten.etherscan.io/tx/0x641bab63bc51edf47d16762ffd130af89d21ac5c29e684b6fa04fc9575dd609b


### Token holders
https://ropsten.etherscan.io/token/0xcb97df60e1bc485bf882bf3d8370589bbb64c91b#balances


### Token transfers

* transfer 61.6 tokens (vesting percent allows), gas = 55876
https://ropsten.etherscan.io/tx/0xbc5b58589ccc979d848cf5d6dc61b372188ac6d5c95de6effcae7b91ac1e6a2f

* transfer 3000 tokens (more then vesting percent allows) => rejected txn, not allowed address, gas = 26909
https://ropsten.etherscan.io/tx/0xea0966ace39ca5f5f9ff44adad164cc6b672dbd473f1f7b4613270fec4aceba9

* addAllowedAddress, gas = 43946
https://ropsten.etherscan.io/tx/0xa3fab69aae9a648d25c4317dafb612bfdffd244abc18b288472d0dbf5b661ebe

* transfer 3000 tokens (allowed address), gas = 38948
https://ropsten.etherscan.io/tx/0x40b4e81cc643e82489518ed3963f9af357cb80c786b9e7fb3faea244e7546400
