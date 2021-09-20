*** Settings ***
Resource      %{ENV_DIR}/%{TEST_ENV}/env_settings.robot
Library       RequestsLibrary

*** Keywords ***
Request home page
    [Arguments]    ${expected_http_statuscode}
    Create Session    auth_host    https://${AUTH_SERVER_HOST}:${AUTH_SERVER_PORT}
    ${actual_http_statuscode}=    Get Request   auth_host    /api/Info
    Status Should Be    ${expected_http_statuscode}    ${actual_http_statuscode}  
    [Return]    ${actual_http_statuscode}

Request api doc
    [Arguments]    ${expected_http_statuscode}
    Create Session    auth_host    https://${AUTH_SERVER_HOST}:${AUTH_SERVER_PORT}
    ${actual_http_statuscode}=    Get Request    auth_host    /swagger/index.html
    Status Should Be    ${expected_http_statuscode}    ${actual_http_statuscode}
    [Return]    ${actual_http_statuscode}