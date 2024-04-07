*** Settings ***
Resource  ../Resource.robot

*** Variables ***
${USERNAME_FIELD}  nameET
${PASSWORD_FIELD}  passwordET
${USERNAME_VALUE}  bod@example.com
${PASSWORD_VALUE}  10203040
${LOGIN_BUTTON}  loginBtn
${INVALID_USERNAME_VALUE}  alice@example.com
${ERROR_MESSAGE_LABEL}  passwordErrorTV
${ERROR_MESSAGE_TEXT}  Sorry this user has been locked out.

*** Keywords ***

Preencher o campo username com usuário válido
    Wait Until Page Contains Element  ${USERNAME_FIELD}
    Input Text  ${USERNAME_FIELD}  ${USERNAME_VALUE}

Preencher o campo password
    Wait Until Page Contains Element  ${PASSWORD_FIELD}
    Input Text  ${PASSWORD_FIELD}  ${PASSWORD_VALUE}

Clicar no botão de login
    Wait and Click  ${LOGIN_BUTTON}

Preencher o campo username com usuário inválido
    Wait Until Page Contains Element  ${USERNAME_FIELD}
    Input Text  ${USERNAME_FIELD}  ${INVALID_USERNAME_VALUE}

Verificar que a mensagem de erro é exibida
    Wait Until Page Contains Element  ${ERROR_MESSAGE_LABEL}
    Element Text Should Be  ${ERROR_MESSAGE_LABEL}  ${ERROR_MESSAGE_TEXT}
