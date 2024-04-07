*** Settings ***
Resource  ../Resource.robot

*** Variables ***
${PLACE_ORDER_BUTTON}  paymentBtn
${ORDER_SUCCESS_LABEL}  orderTV
${ORDER_SUCCESS_MESSAGE}  Your order has been dispatched and will arrive 
...    as fast as the pony gallops!


*** Keywords ***
Clicar no botão Place Order
    Wait and Click  ${PLACE_ORDER_BUTTON}

Verificar que o pedido foi realizado com sucesso
    Wait Until Page Contains Element  ${ORDER_SUCCESS_LABEL}
    Element Text Should Be  ${ORDER_SUCCESS_LABEL}  ${ORDER_SUCCESS_MESSAGE}

