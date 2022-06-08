// SPDX-License-Identifier: MIT
pragma solidity 0.5.2;

import "./CustomToken.sol";

contract Money is CustomToken {
    uint8 private DECIMALS = 5; //자리수
    uint256 private MAX_TOKEN_COUNT = 20000;   // 총 토큰 개수
    uint256 private MAX_SUPPLY = MAX_TOKEN_COUNT * (10 ** uint256(DECIMALS)); //총 발행량
    uint256 private INITIAL_SUPPLY = MAX_SUPPLY * 1 / 10; //초기 공급량

    bool private issued = false;

    constructor()
        CustomToken("Money", "LOT", DECIMALS, MAX_SUPPLY)
        public {
            require(issued == false);
            super.mint(msg.sender, INITIAL_SUPPLY);
            issued = true;
    }

}