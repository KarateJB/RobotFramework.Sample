*** Settings ***
Force Tags    auth_smoke_test
Resource      %{ENV_DIR}/%{TEST_ENV}/env_settings.robot
Resource      keywords/send_request.robot

*** Test Cases ***
Home page is good
    ${response}=    HttpGet Request    url=/api/info
    Status Should Be    200    ${response}


API document is good 
    ${response}=    HttpGet Request    url=/swagger/index.html
    Status Should Be    200    ${response}
