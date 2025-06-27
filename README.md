
# 🎮 DIOmon NFT Game - Smart Contract

DIOmon é um jogo de NFTs colecionáveis e batalhas, desenvolvido em Solidity. Cada DIOmon é um NFT único baseado no padrão ERC-721, que pode ser criado, colecionado e evoluído através de batalhas.

---

## 🚀 Descrição

Este contrato inteligente permite a criação de monstros digitais chamados **DIOmons**, cada um representado como um token não fungível (NFT). Os jogadores podem:

- ✅ Criar DIOmons.
- ✅ Realizar batalhas entre eles.
- ✅ Evoluir seus DIOmons, aumentando o nível após cada batalha.

---

## 🔗 Tecnologias e Dependências

- 🟦 Solidity ^0.8.26
- 🏛️ OpenZeppelin Contracts (ERC-721 padrão)

---

## 🗺️ Funcionalidades

### 🧠 Estrutura do DIOmon
Cada DIOmon possui:
- `name`: Nome do monstro.
- `img`: URL da imagem do NFT.
- `level`: Nível do monstro (inicializado em 0).

### ⚙️ Funções principais

#### `createNewDiomon(string _name, address _to, string _img)`
- Cria um novo DIOmon e o envia para o endereço `_to`.
- Somente o proprietário do jogo (`gameOwner`) pode criar novos DIOmons.

#### `battle(uint _attakingDiomon, uint _defendingDiomon)`
- Realiza uma batalha entre dois DIOmons.
- Somente o proprietário do DIOmon atacante pode iniciar a batalha.
- O DIOmon com maior nível recebe +2 de experiência, e o perdedor +1.
- Se ambos tiverem o mesmo nível, o atacante ganha +2 e o defensor +1.

---

## 🔒 Modificadores

### `onlyOwner(uint _monsterId)`
- Restringe funções para que apenas o dono do NFT específico possa executá-las.

---

## 👑 Propriedade do Jogo

- O endereço que faz o deploy do contrato é definido como `gameOwner`.
- Apenas o `gameOwner` pode criar novos DIOmons.

---

## 🤝 Contribuição

Sinta-se à vontade para abrir issues, propor melhorias ou fazer forks deste contrato. Toda colaboração é bem-vinda!

---

## 🚀 Sobre

Este é um projeto educacional desenvolvido no contexto dos cursos da **DIO** para ensino de desenvolvimento de smart contracts com NFTs e Solidity.

---
