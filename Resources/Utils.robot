*** Settings ***
Library  Collections
Library  JsonUtil.py


*** Keywords ***

Get JSON Field Value
    [Arguments]  ${jsonFile}  ${field}
    #Log To Console   ${field}
    ${value} =  Get Value From Json  ${jsonFile}  ${field}
    #Log To Console  ${value}
    Log To Console  \n--Value for field  ${field} : ${value}
    [Return]  ${value}
