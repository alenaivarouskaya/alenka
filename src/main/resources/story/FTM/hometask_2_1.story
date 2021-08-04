Meta:
	@group hometask
	@layout desktop
	

Lifecycle:
Examples:
|email								|displayName|
|#{generate(Internet.emailAddress)} |#{generate(regexify '[a-z]{5}[A-Z]{2}')} |
|#{generate(Internet.emailAddress)} |#{generate(regexify '[a-z]{5}[A-Z]{2}')} |


Scenario: sign up a user
Given I am on the main application page
When I click on an element by the xpath '//*[@data-analytics-button="whiteSignupHeroButton"]'
When I enter `<email>` in field located `By.xpath(//*[@name="email"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
When I enter `<displayName>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<displayName>` in field located `By.xpath(//*[@id="displayName"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
When I click on an element by the xpath '//*[@data-test-id="moonshot-continue-button"]'
When I click on an element by the xpath '//*[@data-test-id="moonshot-try-bc-free-trial"]'
When I click on an element by the xpath '//*[@aria-label="CloseIcon"]'
When I check a checkbox with the attribute '$name'='$tos'
When I click on an element by the xpath '//*[@data-test-id="moonshot-billing-skip-cta"]'
When I click on an element by the xpath '//*[@data-test-id="moonshot-success-button"]'