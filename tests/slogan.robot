*** Settings ***
Library   Browser

Resource    ${EXECDIR}/resources/main.resource

Test Setup            Start Test
Test Teardown         Finish Test

*** Variables ***
${slogan}    Conectando colecionadores de figurinhas da copa.


*** Test Cases ***
Deve validar o slogan da homa page 
    New Page        https://trade-sticker-dev.vercel.app
    Get Text        .logo-container h2    contains    ${slogan}