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

```Copy code
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

```truffle develop
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
