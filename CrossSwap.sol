// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract crossSwap {
    address[] public routers;
    address[] public connectors;

    ///////////////////////////////////////////////////
    //0x9Ac64Cc6e4415144C455BD8E4837Fea55603e5c3
    //0xCDe540d7eAFE93aC5fE6233Bee57E1270D3E330F
    function pushRouter(address router) public {
        // Append to array
        // This will increase the array length by 1.
        routers.push(router);
    }

    function pushConnector(address connector) public {
        // Append to array
        // This will increase the array length by 1.
        connectors.push(connector);
    }

    ///////////////////////
    function popRouter() public {
        // Remove last element from array
        // This will decrease the array length by 1
        routers.pop();
    }

    function popConnector() public {
        // Remove last element from array
        // This will decrease the array length by 1
        connectors.pop();
    }

    /////////////////////////////////////////////////
    function getLengthRouter() public view returns (uint) {
        return routers.length;
    }

    function getLengthConnector() public view returns (uint) {
        return connectors.length;
    }

    ////////////////////////////////////
    function removeRouter(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete routers[index];
    }

    function removeConnector(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete connectors[index];
    }


    //////////////////////////////////////////////////////////////
    function getRouters() public view returns (address[] memory) {
        return routers;
    }

    function getConnectors() public view returns (address[] memory) {
        return connectors;
    }



    /*
        Gets router* and path* that give max output amount with input amount and tokens
        @param amountIn input amount
        @param tokenIn source token
        @param tokenOut destination token
        @return max output amount and router and path, that give this output amount
hghg
        router* - Uniswap-like Router
        path* - token list to swap
     */
    function quote(
        uint amountIn,
        address tokenIn,
        address tokenOut
    ) external view returns (uint amountOut, address router, address[] memory path) {
        // TODO
    }
    
    /*
        Swaps tokens on router with path, should check slippage
        @param amountIn input amount
        @param amountOutMin minumum output amount
        @param router Uniswap-like router to swap tokens on
        @param path tokens list to swap
        @return actual output amount
     */
    function swap(
        uint amountIn,
        uint amountOutMin,
        address router,
        address[] memory path
    ) external returns (uint amountOut) {
        // TODO
    }
}