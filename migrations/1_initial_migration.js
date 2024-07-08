/**
 * Questo script di migrazione iniziale è utilizzato da Truffle per distribuire il contratto Migrations.
 * Le migrazioni sono script di distribuzione automatizzati che consentono di mantenere traccia delle distribuzioni
 * dei contratti sulla blockchain. Questo è particolarmente utile quando si aggiornano i contratti o si distribuiscono
 * nuovi contratti, in quanto permette di eseguire le distribuzioni in modo ordinato e tracciabile.
 */

const Migrations = artifacts.require("Migrations");

module.exports = function(deployer) {
  // Deploy del contratto Migrations
  deployer.deploy(Migrations);
};