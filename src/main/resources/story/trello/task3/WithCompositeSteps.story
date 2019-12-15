Description: 'Sign In' scenario using page elements steps
Lifecycle:
Examples:
|email|name|password|
|${newEmail}|#{generate(FunnyName.name)}|${newPassword}|


Scenario: User login
Meta:
    @layout desktop
GivenStories: story/trello/preconditions/Precondition.story
Given I am on a page with the URL 'https://trello.com/login'
When I enter `<email>` in field located `By.xpath(//input[@type='email'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@type='submit'])`
Then the text 'Welcome to Trello!' exists


Scenario: Accounts confirmation
Meta:
    @layout desktop
Given I am on a page with the URL 'http://ugly.email/'
When I confirm <email> trello account 
Then the text 'We're glad you're here!' exists


Scenario: UI controls validation
Meta:
    @layout desktop
    @group visual
Given I am on the main application page
When I wait until element located `By.xpath(//div[@class="first-board-navigation"])` appears
When I COMPARE_AGAINST baseline with `testBaseline1`
When I click on element located `By.xpath(//div[@class="first-board-navigation"]/span[2])`
When I COMPARE_AGAINST baseline with `testBaseline2`
When I click on element located `By.xpath(//div[@class="first-board-navigation"]/span[3])`
When I COMPARE_AGAINST baseline with `testBaseline3`
When I click on element located `By.xpath(//div[@class="first-board-navigation"]/span[4])`
When I COMPARE_AGAINST baseline with `testBaseline4`
When I click on element located `By.xpath(//div[@class="first-board-navigation"]/span[5])`
When I COMPARE_AGAINST baseline with `testBaseline5` ignoring:
|ELEMENT|
|By.xpath(//img[@src="https://a.trellocdn.com/prgb/dist/images/create-first-board/card-drag/en-card-drag.6c3a7ca68fa9622801b7.gif"])|
