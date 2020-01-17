# TestePaschoalotto

# Como usar?

1. Deve-se realizar o download e instalar o Python 3 (https://www.python.org/downloads/) - Não instalação, não esqueça de marcar a opção para incluir o Pyhton nas Váriavéis de Ambiente;

2. Agora será necessário instalar o RobotFramework, para realizar sua instalação execute a linha de comando "pip install -U robotframework" no cmd;

3. Pronto, com o Python e o RobotFramework instalados, já será possível executar o RobotFramework em um editor de sua escola.

---

Para rodar o código, vôce poderá executar o seguinte código no powershell/cmd do editor:

robot -d .\results\ .\specs\pesquisa_produtos.robot

-d .\results\ => Salva o log de execução na pasta \results
.\specs\pesquisa_produtos.robot => É onde os casos de testes/cenários estão, o Robot irá executar na sequência
