*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Screenshot

*** Variables ***
${ORANGE_URL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}           edge
${USERNAME}          Admin
${PASSWORD}          admin123
${FALSE_USERNAME}    Administrador
${FALSE_PASSWORD}    admin
${USERNAME_FIELD}    //input[@name='username']
${PASSWORD_FIELD}    //input[@type='password']
${BTN_LOGIN}          //button[@type='submit'][contains(.,'Login')]
${DASHBOARD}          //h6[contains(.,'Dashboard')]
${LOGIN_ERROR}        //div[@class='oxd-alert-content oxd-alert-content--error']
${BTN_FORGOT}         //p[contains(.,'Forgot your password?')]
${REST_PASSWORD}     //h6[contains(.,'Reset Password')]
${RESET_FIELD}       //input[@name='username']
${BTN_RESET}        //button[contains(.,'Reset Password')]
${RESET_SUCESS}    //h6[contains(.,'Reset Password link sent successfully')]