*** Settings ***
Force Tags    auth_smoke_test
Resource      %{ENV_DIR}/%{TEST_ENV}/env_settings.robot
Resource      keywords/C01_service_up.robot

*** Test Cases ***
Home page is good
    ${http_statuscode}=    Request home page  expected_http_statuscode=200

API document is good 
    ${http_statuscode}=    Request api doc  expected_http_statuscode=200