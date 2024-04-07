*** Settings ***
Resource  ../Resource.robot

*** Variables ***
${FULLNAME_FIELD}  fullNameET
${FULLNAME_VALUE}  Teste
${ADRESS1_FIELD}  address1ET
${ADRESS1_VALUE}  Teste
${CITY_FIELD}  cityET
${CITY_VALUE}  Teste
${ZIPCODE_FIELD}  zipET
${ZIPCODE_VALUE}  123456
${COUNTRY_FIELD}  countryET
${COUNTRY_VALUE}  Brazil
${PAYMENT_BUTTON}  paymentBtn


*** Keywords ***
Preencher os dados de entrega
    Wait Until Page Contains Element  ${FULLNAME_FIELD}
    Input Text  ${FULLNAME_FIELD}  ${FULLNAME_VALUE}
    Input Text  ${ADRESS1_FIELD}  ${ADRESS1_VALUE}
    Input Text  ${CITY_FIELD}  ${CITY_VALUE}
    Input Text  ${ZIPCODE_FIELD}  ${ZIPCODE_VALUE}
    Input Text  ${COUNTRY_FIELD}  ${COUNTRY_VALUE}

Clicar no botão To Payment
    Wait and Click  ${PAYMENT_BUTTON}