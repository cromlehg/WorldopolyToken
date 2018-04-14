pragma solidity ^0.4.18;

import './ownership/Ownable.sol';

contract Token {
  function setSaleAgent(address newSaleAgent) public;
  function setVestingPercent(uint newVestingPercent) public;
  function transferOwnership(address newOwner) public;
}

contract PreITO {
  function setStart(uint newStart) public;
  function addMilestone(uint period, uint bonus) public;
  function setPrice(uint newPrice) public;
  function setPercentRate(uint newPercentRate) public;
  function addValueBonus(uint from, uint bonus) public;
  function setMinInvestedLimit(uint newMinInvestedLimit) public;
  function setHardcap(uint newHardcap) public;
  function setWallet(address newWallet) public;
  function setNextSaleAgent(address newICO) public;
  function setToken(address newToken) public;
  function transferOwnership(address newOwner) public;
}

contract ITO {
  function setStart(uint newStart) public;
  function setPeriod(uint newPeriod) public;
  function setPrice(uint newPrice) public;
  function setPercentRate(uint newPercentRate) public;
  function addValueBonus(uint from, uint bonus) public;
  function setFirstBonusPercent(uint newFirstBonusPercent) public;
  function setFirstBonusLimitPercent(uint newFirstBonusLimitPercent) public;
  function setMinInvestedLimit(uint newMinInvestedLimit) public;
  function setHardcap(uint newHardcap) public;
  function setWallet(address newWallet) public;
  function addWallet(address wallet, uint percent) public;
  function setToken(address newToken) public;
  function transferOwnership(address newOwner) public;
}

contract TestConfigurator is Ownable {
  Token public token;
  PreITO public preITO;
  ITO public ito;

  function setToken(address _token) public onlyOwner {
    token = Token(_token);
  }

  function setPreITO(address _preITO) public onlyOwner {
    preITO = PreITO(_preITO);
  }

  function setITO(address _ito) public onlyOwner {
    ito = ITO(_ito);
  }

  function deploy() public onlyOwner {
    preITO.setWallet(0x8fD94be56237EA9D854B23B78615775121Dd1E82);
    preITO.setStart(1523577600);
    preITO.addMilestone(10, 20);
    preITO.addMilestone(10, 15);
    preITO.addMilestone(10, 10);
    preITO.setPrice(3184000000000000000000);
    preITO.setMinInvestedLimit(100000000000000000);
    preITO.setHardcap(6282000000000000000000);
    preITO.setToken(token);
    preITO.setPercentRate(100);
    preITO.addValueBonus(3000000000000000000, 10);
    preITO.addValueBonus(6000000000000000000, 15);
    preITO.addValueBonus(9000000000000000000, 20);
    preITO.addValueBonus(12000000000000000000, 25);
    preITO.addValueBonus(15000000000000000000, 30);
    preITO.addValueBonus(21000000000000000000, 40);
    preITO.addValueBonus(30000000000000000000, 50);
    preITO.addValueBonus(48000000000000000000, 60);
    preITO.addValueBonus(75000000000000000000, 70);
    preITO.addValueBonus(120000000000000000000, 80);
    preITO.addValueBonus(150000000000000000000, 90);
    preITO.addValueBonus(225000000000000000000, 100);
    preITO.addValueBonus(300000000000000000000, 110);
    preITO.addValueBonus(450000000000000000000, 120);
    preITO.addValueBonus(600000000000000000000, 130);
    preITO.addValueBonus(900000000000000000000, 150);

    token.setSaleAgent(preITO);
    token.setVestingPercent(0);
    preITO.setNextSaleAgent(ito);

    ito.setStart(1523577600);
    ito.setPeriod(44);
    ito.setPrice(3184000000000000000000);
    ito.setFirstBonusPercent(5);
    ito.setFirstBonusLimitPercent(20);
    ito.setMinInvestedLimit(100000000000000000);
    ito.setHardcap(37697000000000000000000);
    ito.setWallet(0x8fD94be56237EA9D854B23B78615775121Dd1E82);
    ito.addWallet(0xaa8ed6878a202eF6aFC518a64D2ccB8D73f1f2Ca, 15);
    ito.addWallet(0x24a7774d0eba02846580A214eeca955214cA776C, 5);
    ito.addWallet(0xaa8ed6878a202eF6aFC518a64D2ccB8D73f1f2Ca, 5);
    ito.setToken(token);
    ito.setPercentRate(100);
    ito.addValueBonus(3000000000000000000, 10);
    ito.addValueBonus(6000000000000000000, 15);
    ito.addValueBonus(9000000000000000000, 20);
    ito.addValueBonus(12000000000000000000, 25);
    ito.addValueBonus(15000000000000000000, 30);
    ito.addValueBonus(21000000000000000000, 40);
    ito.addValueBonus(30000000000000000000, 50);
    ito.addValueBonus(48000000000000000000, 60);
    ito.addValueBonus(75000000000000000000, 70);
    ito.addValueBonus(120000000000000000000, 80);
    ito.addValueBonus(150000000000000000000, 90);
    ito.addValueBonus(225000000000000000000, 100);
    ito.addValueBonus(300000000000000000000, 110);
    ito.addValueBonus(450000000000000000000, 120);
    ito.addValueBonus(600000000000000000000, 130);
    ito.addValueBonus(900000000000000000000, 150);

    token.transferOwnership(owner);
    preITO.transferOwnership(owner);
    ito.transferOwnership(owner);
  }
}
