*** Settings ***
Resource  ../Resources/Libraries.robot
Resource  ../Resources/Resources.robot
Resource  ../Resources/Utils.robot

#  robot Test_Cases\Login.robot

*** Variables ***


*** Test Cases ***
WelcomePage
#    create webdriver  ${browser}
    open browser    ${url}    ${browser}
    loginToDPortal
  #  close browser

*** Keywords ***

loginToDPortal
    click element  xpath=//a[contains(text(),'clique aqui')]

    ${getUsername} =  Utils.Get JSON Field Value  Input_Data/input.json   xxx.zzz.username
    ${getPassword} =  Utils.Get JSON Field Value  Input_Data/input.json   xxx.aaa.password

    input text  id=username  ${getUsername}
    input text  id:password   ${getPassword}
    click element   xpath=//button[@type='submit']
    #click element  id:ctl00_CPHContainer_btnLoginn



