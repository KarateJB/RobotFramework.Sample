*** Settings ***
Resource      %{ENV_DIR}/%{TEST_ENV}/env_settings.robot
Library       RequestsLibrary

*** Keywords ***
HttpGet Request
    [Arguments]    ${url}
    Create Session    auth_host    https://${AUTH_SERVER_HOST}:${AUTH_SERVER_PORT}
    ${response}=    Get Request   auth_host    ${url}
    [Return]    ${response}    