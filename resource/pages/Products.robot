*** Settings ***
Resource  ../Resource.robot

*** Variables ***
#Android
${SAUCE_LABS_BACKPACK}  accessibility_id=Sauce Labs Backpack
${MENU_BUTTON}  menuIV
${LOGIN_LINK}  //android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/itemTV" and @text="Log In"]
${TITLE_PAGE_NAME}  productTV
${TITLE_PAGE_VALUE}  Products

*** Keywords ***

Clicar na mochila sauce labs
    Wait and Click  ${SAUCE_LABS_BACKPACK}

Clicar no botão de menu
    Wait and Click  ${MENU_BUTTON}

Clicar em login
    Wait and Click  ${LOGIN_LINK}

Verificar que está na tela de Produtos
    Wait Until Page Contains Element  ${TITLE_PAGE_NAME}
    Element Text Should Be  ${TITLE_PAGE_NAME}  ${TITLE_PAGE_VALUE}