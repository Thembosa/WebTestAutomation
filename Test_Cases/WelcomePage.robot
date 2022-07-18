*** Settings ***
Resource  ../Resources/Libraries.robot
Resource  ../Resources/Resources.robot

#  robot Test_Cases\WelcomePage.robot

*** Variables ***


*** Test Cases ***
WelcomePage
#    create webdriver  ${browser}
    openBrowser
    loginToDPortal
    close browser

*** Keywords ***
openBrowser
        open browser    ${url}    ${browser}

loginToDPortal
    click element  xpath://
    input text  id:username  erty
    input text  id:password   XXX
    click element   ng-reflect-jhi-translate="login.form.button"
