// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/**
 * @title Migrations
 * @dev Questo contratto viene utilizzato da Truffle per gestire e tenere traccia delle migrazioni.
 * Una migrazione è il processo di distribuzione degli smart contract sulla blockchain.
 * Questo contratto memorizza lo stato dell'ultima migrazione completata, assicurando che le migrazioni non vengano eseguite più volte.
 */
contract Migrations {
  
  // L'indirizzo del proprietario del contratto, inizializzato all'indirizzo che ha distribuito il contratto
  address public owner = msg.sender;

  // Memorizza l'ID dell'ultima migrazione completata
  uint public last_completed_migration;

  /**
   * @dev Modificatore che limita l'esecuzione della funzione al solo proprietario del contratto.
   * Verifica che il chiamante della funzione sia il proprietario del contratto.
   */
  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

  /**
   * @dev Funzione per impostare l'ID dell'ultima migrazione completata.
   * Può essere chiamata solo dal proprietario del contratto grazie al modificatore `restricted`.
   * @param completed L'ID dell'ultima migrazione completata.
   */
  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}