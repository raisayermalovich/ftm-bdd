Description: 'Sign Up' scenario using page elements steps


Scenario: Open trello main page
Meta:
    @layout desktop
Given I am on the main application page
Then the page title is equal to 'Trello'


Scenario: Accounts creating
Meta:
    @layout desktop
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I enter `<email>` in field located `By.xpath(//input[@type='email'])`
When I click on element located `By.xpath(//input[@value='Continue'])`
When I enter `<name>` in field located `By.xpath(//input[@id='name'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@value='Sign Up'])`
Then the text 'Welcome to Trello!' exists
When I remove all cookies from the current domain
Then the text 'Log in to Trello' exists
Examples:
|email|name|password|
|${newEmail}|#{generate(FunnyName.name)}|${newPassword}|
|#{generate(regexify '[a-zA-Z0-9]{5,10}')}@ugly.email|#{generate(FunnyName.name)}|${newPassword}|

