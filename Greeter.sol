pragma solidity >=0.4.22 <0.6.0;

/**+-Adentro del Contrato va TODO el Código:_*/
contract Greeter {
    /**+-Declaramos una Variable, en este Caso una String:_*/
    string greeting = "Hello, World!";

    /**+-Con la Función "Saludar(greet)" simplemente devolvemos el Texto de la Var "greeting":_*/
    function greet() public view returns (string memory) {
        return greeting;

    }

    /**+-Con la Función "setGreeting" podemos modificar la Var "greeting":_*/
    function setGreeting();
}
