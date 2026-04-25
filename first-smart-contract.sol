// Licencia
// Licencia SPDX-License-Identifier: LGPL-3.0-only

// Versión de solidity
pragma solidity ^0.8.24;

// Contrato
contract Calculadora {
    
    // Variables
    uint256 public resultado = 10;

    // Modifiers
    modifier checksNumbers(uint256 num1) {
        if (num1 != 10) revert();
        _;
    }

    // Events
    event AdditionEvent (uint256 num11, uint256 num12, uint256 result);
    event SubstractionEvent (uint256 num11, uint256 num12, uint256 result);
    event SubstractionNegNumEvent (int256 num11, int256 num12, int256 result);

    // External Functions
    function addition (uint256 _num1, uint256 _num2) public returns (uint256 _result){
        _result = _num1 + _num2;
        emit AdditionEvent(_num1, _num2, _result);
    }

    function substraction (uint256 _num1, uint256 _num2) public returns (uint256 _result){
        _result = substractionLogic(_num1, _num2);
        emit SubstractionEvent(_num1, _num2, _result);
    }

    function substractionWithNegNum (int256 _num1, int256 _num2) public returns (int256 _result){
        _result = substractionLogicToNumNeg(_num1, _num2);
        emit SubstractionNegNumEvent(_num1, _num2, _result);
    }

    function multiplier (uint256 _num1) public {
        // Aqui si estamos modificando la variable global del contrato
        resultado = resultado * _num1;
    }

    function multiplier2 (uint256 _num1) public checksNumbers(_num1) {
        // Aqui si estamos modificando la variable global del contrato y añadimos un modificador
        resultado = resultado * _num1;
    }

    // Internal Functions (a estas funciones no puede llamar el usuario)
    function substractionLogic (uint256 _num1, uint256 _num2) internal pure returns (uint256 _result){
        // require(_num1 > _num2, "Numero 1 debe ser mayor que numero 2, asi evitamos los negativos");
        _result = _num1 - _num2;
        return _result;
    }

    function substractionLogicToNumNeg (int256 _num1, int256 _num2) internal pure returns (int256 _result){
        _result = _num1 - _num2;
        return _result;
    }

}