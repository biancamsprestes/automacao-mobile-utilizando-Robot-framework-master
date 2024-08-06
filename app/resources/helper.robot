***Settings***
Documentation       Page Help



***Variables***
${ElementGarden}                            xpath=//android.widget.LinearLayout[@content-desc="My garden"]
${ElementPlantList}                         xpath=//android.widget.LinearLayout[@content-desc="Plant list"]
${AddPlant}                                 ADD PLANT
${PlantAdd}                                 id=com.google.samples.apps.sunflower:id/snackbar_text
${plantApple}                               Apple
${plantAvocado}                             Avocado
${plantBeet}                                Beet
${IdAdd}                                    id=com.google.samples.apps.sunflower:id/fab
@{plantList}                                ${plantBeet}    ${plantAvocado}
${voltar}                                   xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton

***Keywords***
que esteja na tela inicial do app sunflower
    Element Attribute Should Match          ${ElementGarden}     selected     true

clicar em add plant
    Wait Until Page Contains                ${AddPlant}
    Click Text                              ${AddPlant}

selecionar o fruto desejado
    Element Attribute Should Match          ${ElementPlantList}     selected     true
    Escolher fruto                          ${plantApple}  

clicar em add
    Wait Until Page Contains Element        ${IdAdd}
    Click Element                           ${IdAdd}

sistema adicionará o fruto escolhido ao Jardim
    Wait Until Page Contains Element        ${PlantAdd}        
    Element Text Should Be                  ${PlantAdd}        Added plant to garden

Escolher fruto
    [Arguments]                             ${target}
    Wait Until Page Contains                ${target}
    Click Text                              ${target}

selecionar os frutos desejados e adiconar
    FOR         ${l}            IN          @{plantList}
        Element Attribute Should Match      ${ElementPlantList}     selected     true
        Escolher fruto                      ${l}    
        Wait Until Page Contains Element    ${IdAdd}
        Click Element                       ${IdAdd}
        Wait Until Page Contains Element    ${PlantAdd}        
        Element Text Should Be              ${PlantAdd}        Added plant to garden
        Click Element                       ${voltar}
    END                              

sistema apresentará os frutos em MY GARDEN
    Click Element                           ${ElementGarden}
    Page Should Contain Text                ${plantList[0]}
    Page Should Contain Text                ${plantList[1]}
    

