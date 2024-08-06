# Bem-vindo ao desafio

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Robot-framework-logo.png" width="300px"/>
</div>


## Documentação útil

1. [Automação Mobile](https://github.com/LuisFelipeSeabra/DesafioFrontEndRobot/tree/master/app)
2. [Planejamento de Casos de Testes](https://github.com/LuisFelipeSeabra/DesafioFrontEndRobot/blob/master/ContaCorrenteStar.pdf)


## Planejamento de casos de teste
Para o projeto de planejamento de casos de teste, criou-se o fluxo de abertura de conta da fintech Start. Foram criados 17 cenários com o objetivo de apresentar uma boa cobertura de testes do fluxo de criação de conta corrente.
```
Formato: Gherkin 
```


## Projeto de Automação mobile
Para automação Mobile utilizou-se: o formato Gherkin para a criação dos cenários, Appium como ferramenta de automatização e RobotFramework como framework de desenvolvimento.
```
Formato: Gherkin
Ferramenta: Appium
Framework: RobotFramework
```


#### Estruturação do Projeto:
```
+ /App                                            # Projeto                                                                                          
    ─ /resources/base.robot                       # Estrutura com a base para os testes, os métodos criados aqui, serão executados por todos os testes.                           
    ─ /resources/BDDpt-br.robot                   # Estrutura do BDD
    ─ /resources/helper.robot                     # Estrutura com métodos que poderão ser utilizados pelos testes.
    ─ /tests/.logs                                # Log's das execuções/ Relatório de teste
    ─ /tests/garden.robot                         # Testes a serem executados
    ─ requirements.txt                            # Bibliotecas a serem instaladas
    ─ sunflower.apk                               # Aplicação a ser homologada
        
```


#### Execução dos Testes
Executar [requirements](https://github.com/LuisFelipeSeabra/DesafioFrontEndRobot/blob/master/app/requirements.txt) pela linha de comando:
```
cd C:\app
pip3 install -r requirements.txt
```
Executar pela linha de comando: 
```
cd C:\app\test
robot -d .logs garden.robot
```
Ao final da execução será gerado um [relatório com as execuções e screenshots das telas](https://github.com/LuisFelipeSeabra/DesafioFrontEndRobot/tree/master/app/test/.logs)!


#### Relatório de execução

1. [Relatório](https://github.com/LuisFelipeSeabra/DesafioFrontEndRobot/blob/master/app/test/.logs/log.html)

![image](https://user-images.githubusercontent.com/49051123/121533852-0db43e80-c9d7-11eb-9c5a-9a697d5cefdc.png)


#### Execução dos testes:

![image](https://user-images.githubusercontent.com/49051123/121474094-f7d45880-c999-11eb-9c49-f4cbaff55024.png)


#### Tecnologia

Tecnologias utilizadas no projeto:
  * Python 3.8.8
  * Appium 1.21.0
  * Android studio 4.1.3
  * Virtual Device Name: Pixel_3a_API_30_x86 Target: Android 11.0(Google APIs)
  * Visual Studio Code
