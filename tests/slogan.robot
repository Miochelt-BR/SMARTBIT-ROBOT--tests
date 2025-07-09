*** Settings ***
Documentation     TESTE para verificar slogan  do  smartbit 
Library        Browser

*** Test Cases ***
Deve exibir Slogan na Landing page
        New Browser     browser=chromium   headless=False
         New Page    http://localhost:3000
         Get Text    css = .headline h2     equal     Sua Jornada Fitness Começa aqui!
             
        Sleep     5