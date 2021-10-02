*** Settings ***
Documentation    Resource file with variables
Resource      %{ENV_DIR}/%{TEST_ENV}/credentials.robot

*** Variables ***
${LOGIN_ID}    jblin
${LOGIN_PWD}   ${COMMON_PWD}


*** Keywords ***
# Add keywords here