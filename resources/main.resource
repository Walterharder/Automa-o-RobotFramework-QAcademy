*** Settings ***
Documentation        Arquivo principal do projeto

Library        Browser

Resource    pages/login.resource
Resource    pages/dash.resource



*** Keywords ***
Do Login
    Go to Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    User logged In

Start Test
    New Browser        headless=False        browser=${BROWSER}

Finish Test
    Sleep                      1
    Take Screenshot

    