/**+-Este Archivo Sirve para Configurar la Conexión con la Blockchain de los Contratos en Solidity,
 * es como el Archivo de Configuración del Servidor Back-End en el Desarrollo Web.*/
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*", // Match any network id
    },
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
};
