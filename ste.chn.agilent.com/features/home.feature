Feature: ste.chn.agilent.com home page

	Scenario: visit ste.chn.agilent.com
		Given I open ste.chn.agilent.com web page
		Then I should see page title is: "STE Home Page"
