pragma solidity ^0.4.18;

// ----------------------------------------------------------------------------
// 'GCP' 'G-Dock computing point' token contract
//
// Symbol      : BATT
// Name        : BATT on G-Dock
// Total supply: 1,000,000,0000.000000000000000000
// Decimals    : 18
//
// Enjoy.
//
// (c) Ezio Auditore / Halcyon Network Co.,Ltd. 2018. The MIT Licence.
// ----------------------------------------------------------------------------


// ----------------------------------------------------------------------------
// Safe maths
// ----------------------------------------------------------------------------
library SafeMath {
    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
    function mul(uint a, uint b) internal pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
    function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
}


