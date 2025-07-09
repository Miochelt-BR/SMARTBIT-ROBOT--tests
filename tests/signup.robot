*** Settings ***
Documentation     cenarios de testes de pre cadastro 
Library        Browser

*** Test Cases ***
Deve iniciar o cadastro do cliente 
        New Browser     browser=chromium   headless=False
         New Page    http://localhost:3000
         Get Text    css = #signup h2     equal    Faça seu cadastro e venha para a Smartbit!
         Fill Text    id=name    master dev qa 
         Fill Text    id =email  teste@master.com
         Fill Text    id=document    52324366002
         Click       css= button >> text=Cadastrar

             
        Sleep     10
