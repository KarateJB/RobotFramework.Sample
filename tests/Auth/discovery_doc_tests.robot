*** Settings ***
Force Tags    auth_smoke_test
Resource      %{ENV_DIR}/%{TEST_ENV}/env_settings.robot
Resource      keywords/send_request.robot

*** Test Cases ***
Discovery doc has the right issuer
    # [tags]    WIP
    ${auth_host}=    Set Variable    https://${AUTH_SERVER_HOST}:${AUTH_SERVER_PORT}
    ${response}=    HttpGet Request  url=/.well-known/openid-configuration
    # log to console    ${response.json()}[issuer]
    Status Should Be    200    ${response}
    Should Be Equal As Strings    ${auth_host}    ${response.json()}[issuer]
