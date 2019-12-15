Description: Trello board creation via API
Lifecycle:
Examples:
|email|password|
|usefuluser001@ugly.email|12345678qweRTY|


Scenario: User login
Meta:
    @layout desktop
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Log In'])`
When I enter `<email>` in field located `By.xpath(//input[@type='email'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@type='submit'])`
Then the text 'Welcome to Trello!' exists


Scenario: Trello board creation
Given request body: {
}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?name=BoardFromApi&defaultLabels=true&defaultLists=true&keepFromSource=none&prefs_permissionLevel=private&prefs_voting=disabled&prefs_comments=members&prefs_invitations=members&prefs_selfJoin=true&prefs_cardCovers=true&prefs_background=blue&prefs_cardAging=regular&key=9b9d8756a711bd433559b93e854e3e36&token=5dac2f037b81c58fc25a72b3970f39715ff7edb35f484bcd414fea7e0da6076c'
Then the response code is equal to '200'
