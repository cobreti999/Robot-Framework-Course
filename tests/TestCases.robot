*** Settings ***
Resource  ../resource/Resource.robot
Resource  ../resource/pages/Products.robot
Resource  ../resource/pages/Product_Details.robot
Resource  ../resource/pages/My_Cart.robot
Resource  ../resource/pages/Login.robot
Resource  ../resource/pages/Shipping_Adress.robot
Resource  ../resource/pages/Payment.robot
Resource  ../resource/pages/Checkout.robot

Test Setup  Open App
Test Teardown  Close App

*** Test Cases ***

Caso de Teste 01 - Deve carregar a tela de Product Highlights após escolher um produto
    Clicar na mochila sauce labs
    Verificar que acessamos a tela de Product Details

Caso de Teste 02 - Deve ser possível dar um review 5 estrelas na tela de detalhamento do produto
    Clicar na mochila sauce labs
    Clicar na quinta estrela
    Verificar pop-up com mensagem de sucesso

Caso de Teste 03 - Deve ser possível trocar a cor do produto
    Clicar na mochila sauce labs
    Clicar na cor azul
    Verificar que a cor azul está selecionada

Caso de Teste 04 - O Texto da página Product Highlights deve ser mostrado conforme o esperado
    Clicar na mochila sauce labs
    Verificar que o texto da página Product Highlights está correto

Caso de Teste 05 - Botão Add To Cart deve funcionar conforme o esperado
    Clicar na mochila sauce labs
    Clicar no botão Add To Cart
    Clicar no botão Meu Carrinho
    Verificar que o produto foi adicionado ao carrinho

Caso de Teste 06 - Usuário deve ser capaz ir para a Tela de Produtos após realizar Login com sucesso
    Clicar no botão de menu
    Clicar em login
    Preencher o campo username com usuário válido
    Preencher o campo password
    Clicar no botão de login
    Verificar que está na tela de Produtos

Caso de Teste 07 - Deve ser capaz de bloquear login com Usuário Inválido
    Clicar no botão de menu
    Clicar em login
    Preencher o campo username com usuário inválido
    Preencher o campo password
    Clicar no botão de login
    Verificar que a mensagem de erro é exibida

Caso de Teste 08 - Deve ser capaz de Preencher os Dados de Entrega corretamente
    Clicar na mochila sauce labs
    Clicar no botão Add To Cart
    Clicar no botão Meu Carrinho
    Clicar no botão Proceed To Checkout
    Preencher o campo username com usuário válido
    Preencher o campo password
    Clicar no botão de login
    Preencher os dados de entrega
    Clicar no botão To Payment
    Preencher os dados do cartão
    Clicar no botão Review Order
    Clicar no botão Place Order
    Verificar que o pedido foi realizado com sucesso