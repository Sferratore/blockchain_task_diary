// contracts/TaskDiary.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/utils/Strings.sol";

/**
 * @title TaskDiary
 * @dev Contratto per gestire un diario di task su Ethereum.
 * Permette di creare task, spuntarli (marcarli come completati o meno),
 * cercarli per ID e cancellarli.
 */
contract TaskDiary {
    using Strings for uint;

    // Contatore per l'ID dei task
    uint public taskCount = 0;
    
    // Struttura che rappresenta un task
    struct Task {
        uint id;          // ID del task
        string content;   // Descrizione del task
        bool completed;   // Stato del task (completato o meno)
    }
    
    // Mapping che associa un ID di task a una struttura Task
    mapping(uint => Task) public tasks;
    
    // Costruttore del contratto, non inizializza alcun task
    constructor() public {
    }
    
    /**
     * @dev Funzione per creare un nuovo task.
     * Incrementa il contatore dei task e aggiunge un nuovo task al mapping.
     * @param _content La descrizione del task.
     */
    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
    
    /**
     * @dev Funzione per spuntare (o despuntare) un task.
     * Inverte lo stato di completamento di un task specificato dall'ID.
     * @param _id L'ID del task da spuntare.
     */
    function toggleTask(uint _id) public {
        Task storage task = tasks[_id];
        task.completed = !task.completed;
    }

    /**
     * @dev Funzione per cercare un task per ID.
     * Restituisce una stringa descrivente il task.
     * @param _id L'ID del task da cercare.
     * @return Una stringa contenente la descrizione e lo stato del task.
     */
    function getTask(uint _id) public view returns (string memory) {
        Task storage task = tasks[_id];
        string memory status = task.completed ? "completed" : "not completed";
        return string(abi.encodePacked("Task ID: ", _id.toString(), ", Content: ", task.content, ", Status: ", status));
    }

    /**
     * @dev Funzione per cancellare un task.
     * Rimuove il task dal mapping.
     * @param _id L'ID del task da cancellare.
     */
    function deleteTask(uint _id) public {
        delete tasks[_id];
    }
}