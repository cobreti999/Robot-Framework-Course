*** Settings ***
Resource  ../Resource.robot

*** Variables ***
${PRODUCT_NAME}  productTV
${PRODUCT_NAME_TEST}  Sauce Labs Backpack
${MY_CART_TITLE_TEXT}  My Cart
${PRODUCT_NAME_CART}  titleTV
${PRICE_VALUE_CART}  priceTV
${PRICE_VALUE_NUMBER}  $ 29.99
${PROCEED_TO_CHECKOUT_BUTTON}  cartBt

*** Keywords ***

Verificar que o produto foi adicionado ao carrinho
    Verficar que acessamos a tela My Cart
    Verifcar que o produto está no carrinho

Verficar que acessamos a tela My Cart
    Wait Until Page Contains Element  ${PRODUCT_NAME}
    Element Text Should Be  ${PRODUCT_NAME}  ${MY_CART_TITLE_TEXT}

Verifcar que o produto está no carrinho
    Wait Until Page Contains Element  ${PRODUCT_NAME_CART}
    Element Text Should Be  ${PRODUCT_NAME_CART}  ${PRODUCT_NAME_TEST}
    Element Text Should Be  ${PRICE_VALUE_CART}  ${PRICE_VALUE_NUMBER}

Clicar no botão Proceed To Checkout
    Wait and Click  ${PROCEED_TO_CHECKOUT_BUTTON}
