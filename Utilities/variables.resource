*** Variables ***
${url}    https://credor-app.azurewebsites.net/
${admin-user}    admin@credor.com
${admin-password}    Excel@123
${investor-user}    maheswari.mahendran@excelenciaconsulting.com
${invalid-investor-user}    maheswar.mahendran@excelenciaconsulting.com
${investor-password}    Excel@1234
${invalid-investor-pwd}    Excel@12    
${case-sensitive-investor-password}    excel@1234
${browser}    Chrome

# Web Elements
${login_email}    //input[@id='login_email']
${login_password}    //input[@id='login_password']
${login_submit}    //button[@id='login_submit']
${logout_dropdown}    //a[@id='navbarDropdown']
${logout_click}    //div[@class='nav-item dropdown show']//a[2]
${pop-up_cancel}    //button[normalize-space()='Cancel']
${toast_message}    //div[@id='toast-container']
${password_required}    //div[contains(text(),'Password is required')]
${username_required}    //div[contains(text(),'Username is required')]