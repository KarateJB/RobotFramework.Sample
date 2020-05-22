*** Settings ***
Resource      %{RESOURCE_DIR}/%{TEST_ENV}/env_settings.robot
Library       RequestsLibrary

*** Keywords ***
Request home page
    [Arguments]    ${expected_http_statuscode}
    Create Session    auth_homepage    https://${AUTH_SERVER_IP}:${AUTH_SERVER_PORT}/home/index
    ${actual_http_statuscode}=    Get Request   auth_homepage
    Status Should Be    ${expected_http_statuscode}    ${actual_http_statuscode}  
    [Return]    ${actual_http_statuscode}