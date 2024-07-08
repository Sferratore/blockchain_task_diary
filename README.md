# TaskDiary Smart Contract
Questo progetto implementa un semplice diario di task su Ethereum, permettendo di creare e gestire task (marcarli come completati o meno).

## Requisiti
- Truffle


## Installazione del Progetto
### Clonare il Repository
```
git clone <URL_DEL_REPOSITORY>
cd task-diary
```

### Installare Truffle

Se non hai già Truffle installato, installalo globalmente:

```
npm install -g truffle
```

### Configurare il File truffle-config.js
Configura il file truffle-config.js per utilizzare la rete di sviluppo locale fornita da Truffle:

```
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 9545,
      network_id: "*", // Match any network id
    },
  },
  compilers: {
    solc: {
      version: "0.8.6",
    },
  },
};
```


### Avviare la Rete di Sviluppo di Truffle

Truffle fornisce una rete di sviluppo integrata che può essere avviata con il seguente comando:

```
truffle develop
```


### Compilare i Contratti

Assicurati che i tuoi contratti Solidity siano compilati:

```
truffle compile
```

### Eseguire la Migrazione

Distribuisci i tuoi contratti sulla rete di sviluppo locale:

```
truffle migrate --network development
```


## Interazione con la Blockchain
Puoi utilizzare Truffle Console per interagire con il contratto distribuito. Ecco alcuni esempi di comandi:

### Aprire Truffle Console

Se stai già utilizzando truffle develop, la console sarà aperta automaticamente. In caso contrario, puoi aprire una nuova console:

```
truffle console --network development
```

### Ottenere l'Istanza del Contratto

```
let instance = await TaskDiary.deployed();
```

### Creare un Nuovo Task

```
await instance.createTask("Complete blockchain project");
```

### Recuperare un Task

```
let task = await instance.tasks(1);
console.log(task);
```

### Spuntare un Task

```
await instance.toggleTask(1);
```

### Verificare il Cambiamento di Stato

```
task = await instance.tasks(1);
console.log(task);
```
