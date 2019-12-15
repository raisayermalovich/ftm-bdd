Description: Precondition to 'Sign In' scenario
Lifecycle:
Examples:
|email|name|password|
|${newEmail}|#{generate(FunnyName.name)}|${newPassword}|


Scenario: User sign up
Meta:
    @layout desktop
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I enter `<email>` in field located `By.xpath(//input[@type='email'])`
When I click on element located `By.xpath(//input[@value='Continue'])`
When I enter `<name>` in field located `By.xpath(//input[@id='name'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@value='Sign Up'])`
When I remove all cookies from the current domain
Then the page with the URL 'https://trello.com/login' is loaded
