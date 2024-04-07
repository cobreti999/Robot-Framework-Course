*** Settings ***
Resource  ../Resource.robot

*** Variables ***
#Android
${PRODUCT_NAME}  productTV
${PRODUCT_NAME_TEST}  Sauce Labs Backpack
${QUINTA_ESTRELA}  start5IV
${BUTTON_CONTINUE}  closeBt
${THANK_YOU_MESSAGE}  Thank you for submitting your review!
${BLUE_COLOR_BUTTON}  accessibility_id=Blue color
${COLOR_SELECTED}  //androidx.recyclerview.widget.RecyclerView[@content-desc="Displays available colors of selected product"]/android.view.ViewGroup[2]/android.widget.ImageView[1]
${PRODUCT_HIGHLIGHTS_TEXT}  carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.
${BUTTON_ADD_TO_CART}  cartBt
${BUTTON_CART}  cartIV

*** Keywords ***

Verificar que acessamos a tela de Product Details
    Wait Until Page Contains Element  ${PRODUCT_NAME}
    Element Text Should Be  ${PRODUCT_NAME}  ${PRODUCT_NAME_TEST}

Clicar na quinta estrela
    Wait and Click  ${QUINTA_ESTRELA}

Verificar pop-up com mensagem de sucesso
    Wait Until Page Contains  ${THANK_YOU_MESSAGE}
    Wait Until Page Contains Element  ${BUTTON_CONTINUE}

Clicar na cor azul
    Wait and Click  ${BLUE_COLOR_BUTTON}

Verificar que a cor azul está selecionada
    Wait Until Page Contains Element  ${COLOR_SELECTED}
    
Verificar que o texto da página Product Highlights está correto
    Wait Until Page Contains Element  ${BLUE_COLOR_BUTTON}
    Swipe By Percent  50  50  50  10
    Wait Until Page Contains  ${PRODUCT_HIGHLIGHTS_TEXT}

Clicar no botão Add To Cart
    Wait and Click  ${BUTTON_ADD_TO_CART}

Clicar no botão Meu Carrinho
    Wait and Click  ${BUTTON_CART}