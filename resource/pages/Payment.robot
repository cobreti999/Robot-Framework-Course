*** Settings ***
Resource  ../Resource.robot

*** Variables ***
${NAME_FIELD}  nameET
${NAME_VALUE}  Teste
${CARD_NUMBER_FIELD}  cardNumberET
${CARD_NUMBER_VALUE}  1234567890123456
${EXPIRATION_DATE_FIELD}  expirationDateET
${EXPIRATION_DATE_VALUE}  12/2025
${SECURITY_CODE_FIELD}  securityCodeET
${SECURITY_CODE_VALUE}  123
${REVIEW_ORDER_BUTTON}  paymentBtn

*** Keywords ***
Preencher os dados do cartão
    Wait Until Page Contains Element  ${NAME_FIELD}
    Input Text  ${NAME_FIELD}  ${NAME_VALUE}
    Input Text  ${CARD_NUMBER_FIELD}  ${CARD_NUMBER_VALUE}
    Input Text  ${EXPIRATION_DATE_FIELD}  ${EXPIRATION_DATE_VALUE}
    Input Text  ${SECURITY_CODE_FIELD}  ${SECURITY_CODE_VALUE}

Clicar no botão Review Order
    Wait and Click  ${REVIEW_ORDER_BUTTON}