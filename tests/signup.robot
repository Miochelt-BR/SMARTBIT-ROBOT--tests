*** Settings ***
Documentation     cenarios de testes de pre cadastro 
Library        Browser
Resource        ../resources/base.resource

*** Test Cases ***
Deve iniciar o cadastro do cliente 
    
   ${account}     Get Fake Account
      
        New Browser        browser=chromium    headless=False
    New Page           http://localhost:3000

    Get Text           css=#signup h2    equal    Faça seu cadastro e venha para a Smartbit!
  
    Fill Text          id=name           ${account}[name]
    Fill Text          id=email          teste@masterre.com
    Fill Text          id=document       30673333060

    Click              css=button >> text=Cadastrar
    
    Wait For Elements State    text=Falta pouco para fazer parte da família Smartbit!    visible    5
    Sleep              10
