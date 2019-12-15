Scenario: Visual checks of pages
Meta:
	@layout desktop
	@group visual
GivenStories: story/trello/task2/SignInTest.story

Given I am on the main application page
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