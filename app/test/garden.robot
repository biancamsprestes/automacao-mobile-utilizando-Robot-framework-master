***Settings***
Resource        ../resources/base.robot
Resource        ../resources/BDDpt-br.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Cenário 01: Adicionar fruto
    Dado que esteja na tela inicial do app sunflower
    Quando clicar em add plant
    E selecionar o fruto desejado
    E clicar em add
    Então sistema adicionará o fruto escolhido ao Jardim

  
Cenário 02: Adicionar lista de frutos: ${plantList}   
    Dado que esteja na tela inicial do app sunflower
    Quando clicar em add plant
    E selecionar os frutos desejados e adiconar
    Então sistema apresentará os frutos em MY GARDEN