*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/keywords.resource
Resource    ../../Utilities/variables.resource
Suite Setup    Set Screenshot Directory    LOGDIR/Screenshots
Test Setup    Set Selenium Speed    0.3

*** Test Cases ***
Investor_Add_New_Profile
    App_Launch_KW
    Investor_Login_KW
    Click Element    //a[@id='navbarDropdown']
    Click Element    //app-header/nav[1]/div[2]/div[3]/div[1]/a[1]    
    Click Element    //li[contains(text(),'Profiles')]
    Click Button    //button[@id='profile_addnewprofile']
    Click Element    //select[@id='profile_pp_chooseprofile']    
    Select From List By Label    //select[@id='profile_pp_chooseprofile']    Individual          
    Input Text    //input[@id='profile_pp_if_firstname']    Mohanakrishnan
    Input Text    //input[@id='profile_pp_if_lastname']    Vijayakumar    
    Input Text    //input[@id='profile_pp_if_stadds1']    Address Line One    
    Input Text    //input[@id='profile_pp_if_stadds2']    Address Line Two
    Input Text    //input[@id='profile_pp_if_city']    Chennai    
    Click Element    //select[@id='profile_pp_if_province']    
    Select From List By Label    //select[@id='profile_pp_if_province']    California        
    Input Text    //input[@id='profile_pp_if_zipcode']    123456789    
    Click Element    //select[@id='profile_pp_Distributionmethod']    
    Select From List By Label    //select[@id='profile_pp_Distributionmethod']    Check        
    Scroll Element Into View    //button[@id='profile_pp_cf_cancel mt-3']
    Input Text    //input[@id='profile_pp_cf_incareof']    Nobody    
    Input Text    //input[@id='profile_pp_cf_stadds1']    address one    
    Input Text    //input[@id='profile_pp_cf_stadds2']    address two
    Input Text    //input[@id='profile_pp_cf_city']    city   
    Click Element    //select[@id='profile_pp_cf_province']    
    Select From List By Label    //select[@id='profile_pp_cf_province']    California
    Input Text    //input[@id='profile_pp_cf_zipcode']    9876    
    Click Button    //button[@id='profile_pp_cf_cancel mt-3']
    Logout_KW
    Close Browser
          