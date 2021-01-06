/**+-Este Archivo Sirve para actualizar o cambiar los Datos en la Blockchain de los Contratos en Solidity,
 * es como con una Base de Datos del Back-End en el Desarrollo Web.*/
const ToDoList = artifacts.require("./ToDoList.sol");

module.exports = function (deployer) {
  deployer.deploy(ToDoList);
};
