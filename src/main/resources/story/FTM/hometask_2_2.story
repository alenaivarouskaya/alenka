Meta:
	@group hometask
	@layout desktop

GivenStories: story/FTM/hometask_2_1.story

Scenario: verify user profile
When I click on an element by the xpath '//*[@data-test-id="header-member-menu-button"]'
When I click on an element by the xpath '//*[@data-test-id="header-member-menu-profile"]'
Then the text '<textForVerification>' exists
Examples:
|textForVerification				|
|Profile and visibility				|
|Activity							|
|Cards								|
|Settings							|
|Manage your personal information	|
|About								|
|Username							|
|Bio								|
|Save								|


Scenario: navigate to pages and add visual checks for them
When I ESTABLISH baseline with `profilePage`
When I click on an element by the xpath '//*[@aria-label="SearchIcon"]'
When I ESTABLISH baseline with `searchPage`
When I click on a link with the URL containing '/kanban-template'
When I ESTABLISH baseline with `kanbanTemplatePage`
When I click on an element by the xpath '//*[@data-test-id="header-member-menu-button"]'
When I click on an element by the xpath '//*[text()="Help"]'
When I ESTABLISH baseline with `helpPage`
When I click on an element by the xpath '//*[text()="Privacy Policy"]'
When I ESTABLISH baseline with `privacyPolicyPage`