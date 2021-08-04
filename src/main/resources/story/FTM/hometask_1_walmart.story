Meta:
	@group hometask

	
Scenario: create account
Given I am on a page with the URL 'https://www.walmart.com'
When I click on an element by the xpath '//*[@class="g_a ae_a g_c"]'
When I click on an element with the text 'Sign In'
When I click on an element by the xpath '//*[@data-automation-id="signin-sign-up-btn"]'
When I enter `<firstName>` in field located `By.xpath(//*[@name="firstName"])`
When I enter `<lastName>` in field located `By.xpath(//*[@name="lastName"])`
When I enter `<email>` in field located `By.xpath(//*[@name="email"])`
When I enter `<password>` in field located `By.xpath(//*[@name="password"])`
When I click on an element by the xpath '//*[@data-tl-id="signup-submit-btn"]'
Examples:
|firstName					|lastName					|email								|password|
|#{generate(Name.firstName)}|#{generate(Name.lastName)} |#{generate(Internet.emailAddress)} |#{generate(regexify '^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{8,100}$')}|


Scenario: search for product, navigate to product page and add product to cart
Given I am on a page with the URL 'https://www.walmart.com'
When I enter 'sapiens book' in a field by the xpath `//*[@id="global-search-input"]`
When I click on element located `By.xpath(//*[@id="global-search-submit"])`
When I click on element located `By.xpath(//*[@data-tl-id="ProductTileGridView-1"])`
When I click on element located `By.xpath(//*[@data-tl-id="ProductPrimaryCTA-cta_add_to_cart_button"])`
When I click on element located `By.xpath(//*[@id="hf-cart"])`
