Feature: Automation Exercies US01
  Scenario: TC01
    * configure driver = {type: 'chrome' , addOptions: ["--remote-allow-origins=*"]}
    Given driver 'http://www.automationexercise.com'