🧠 Estudos em Flutter  
Este repositório contém um jogo interativo de **Jokenpô (Pedra, Papel ou Tesoura)** desenvolvido com Flutter. O projeto foi criado com o objetivo de praticar navegação entre telas, gerenciamento de estado e interação com o usuário por meio de imagens clicáveis.

---

📁 Estrutura do Projeto  
🔹 `main.dart`  
- Tela principal (`HomeScreen`) onde o usuário escolhe entre pedra, papel ou tesoura.  
- Utiliza o widget `GestureDetector` para capturar a escolha do jogador.  
- Gera aleatoriamente a jogada do aplicativo e navega para a tela de resultado.

🔹 `tela_resultado.dart`  
- Tela `Result` que mostra a jogada do usuário, a jogada do app, o resultado da partida (Vitória, Derrota ou Empate) e uma imagem ilustrativa correspondente.  
- Inclui botão para jogar novamente, retornando à tela inicial.  
- Utiliza `ModalRoute` para recuperar os argumentos passados pela navegação.

🔹 `assets/images/`  
Contém as imagens utilizadas no jogo:
- `pedra.png`, `papel.png`, `tesoura.png` — Jogadas possíveis  
- `padrao.png` — Imagem neutra da tela inicial  
- `vitoria.png`, `derrota.png`, `empate.png` — Resultados visuais da partida

---

🚀 Tecnologias Utilizadas  
- Flutter  
- Dart  
- Material Design  
- Navegação por rotas nomeadas  
- Widgets: `StatelessWidget`, `StatefulWidget`, `GestureDetector`, `Image.asset`, `Scaffold`, `AppBar`

---

🎯 Objetivo  
Este projeto tem como foco:  
- Praticar conceitos de navegação entre telas com argumentos  
- Criar lógica de decisão com base em escolhas do usuário e respostas aleatórias  
- Trabalhar com imagens locais em Flutter  
- Implementar interatividade básica usando `GestureDetector`  
- Aprender a estruturar um pequeno jogo com interface amigável

---

🧑‍💻 Autor  
Desenvolvido por [lfbpaiva](https://github.com/lfbpaiva) como parte de estudos e exercícios práticos com Flutter.

---

📌 Observações  
Este jogo pode ser aprimorado com:  
- Efeitos sonoros ou animações nas escolhas  
- Histórico de partidas jogadas  
- Interface responsiva para diferentes tamanhos de tela  
- Suporte para dois jogadores (modo multiplayer local)

Sinta-se à vontade para clonar, explorar e contribuir com ideias!
