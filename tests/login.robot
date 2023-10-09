*** Settings ***
Documentation            Login tests

Resource    ${EXECDIR}/resources/main.resource

Test Setup            Start Test
Test Teardown         Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go to Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User logged In


Não deve logar com senha incorreta
    Go to Login Page
    Submit Credentials         papito@gmail.com    123teste
    Toast Message Should Be    Credenciais inválidas, tente novamente!    

Deve exibir notificação toaster se a senha não for preenchida
    Go to Login Page
    Submit Without Password    papito@gmail.com
    Toast Message Should Be    Por favor, informe a sua senha secreta!

Deve exibir notificação toaster se e e-mail não for preenchida
    Go to Login Page
    Submit Without Email       vaibrasil
    Toast Message Should Be    Por favor, informe o seu email!

Deve exibir notificação toaster se a senha e o e-mail não forem preenchidos 
    Go to Login Page
    Submit Without Credentials
    Toast Message Should Be    Por favor, informe suas credenciais!



 