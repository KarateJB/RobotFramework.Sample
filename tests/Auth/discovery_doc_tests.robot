*** Settings ***
Force Tags    auth_smoke_test
Resource      %{ENV_DIR}/%{TEST_ENV}/env_settings.robot
Resource      keywords/C01_service_up.robot

*** Test Cases ***
Discovery doc has the right base host
    [tags] WIP
    ${http_statuscode}=    Request home page  expected_http_statuscode=200