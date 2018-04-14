pragma solidity ^0.4.18;

import './ownership/Ownable.sol';
import './AssembledCommonSale.sol';
import './Token.sol';
import './PreITO.sol';
import './ITO.sol';

contract Configurator is Ownable {

  Token public token;

  PreITO public preITO;

  ITO public ito;

  function deploy() public onlyOwner {

    address manager = 0x675eDE27cafc8Bd07bFCDa6fEF6ac25031c74766;

    token = new Token();

    preITO = new PreITO();
    ito = new ITO();

    commonConfigure(preITO);
    commonConfigure(ito);

    preITO.setWallet(0xa86780383E35De330918D8e4195D671140A60A74);
    preITO.setStart(1524441600);
    preITO.addMilestone(10, 20);
    preITO.addMilestone(10, 15);
    preITO.addMilestone(10, 10);
    preITO.setHardcap(6282000000000000000000);

    token.setSaleAgent(preITO);
    token.setVestingPercent(0);

    ito.setWallet(0x98882D176234AEb736bbBDB173a8D24794A3b085);
    ito.setStart(1527206400);
    ito.setPeriod(44);
    ito.setFirstBonusPercent(5);
    ito.setFirstBonusLimitPercent(20);
    ito.setHardcap(37697000000000000000000);

    ito.addWallet(0x98882D176234AEb736bbBDB173a8D24794A3b085, 15);
    ito.addWallet(0xa86780383E35De330918D8e4195D671140A60A74, 5);
    ito.addWallet(0x675eDE27cafc8Bd07bFCDa6fEF6ac25031c74766, 5);

    preITO.setNextSaleAgent(ito);

    token.transferOwnership(manager);
    preITO.transferOwnership(manager);
    ito.transferOwnership(manager);
  }

  function commonConfigure(AssembledCommonSale sale) internal {
    sale.setPercentRate(100);
    sale.setMinInvestedLimit(100000000000000000);
    sale.setPrice(3184000000000000000000);
    sale.addValueBonus(3000000000000000000, 10);
    sale.addValueBonus(6000000000000000000, 15);
    sale.addValueBonus(9000000000000000000, 20);
    sale.addValueBonus(12000000000000000000, 25);
    sale.addValueBonus(15000000000000000000, 30);
    sale.addValueBonus(21000000000000000000, 40);
    sale.addValueBonus(30000000000000000000, 50);
    sale.addValueBonus(48000000000000000000, 60);
    sale.addValueBonus(75000000000000000000, 70);
    sale.addValueBonus(120000000000000000000, 80);
    sale.addValueBonus(150000000000000000000, 90);
    sale.addValueBonus(225000000000000000000, 100);
    sale.addValueBonus(300000000000000000000, 110);
    sale.addValueBonus(450000000000000000000, 120);
    sale.addValueBonus(600000000000000000000, 130);
    sale.addValueBonus(900000000000000000000, 150);
    sale.setToken(token);
  }

}

