Feature: restcountries.eu

    consume the restcountries.eu GetName  method to obtain country data by name

Scenario Outline: Obtaining the country’s capital
Given That there is a country called <Country>
When I request the data about <Country>
Then The city <Capital> should be outputted as its capital

Examples:
    | Country   | Capital      |
    | Portugal  | Lisbon       |
    | Argentina | Buenos Aires |
    | France    | Paris        |
    | Spain     | Madrid       |
    | Canada    | Ottawa       |
    | Nigeria   | Abuja        |
    | Japan     | Tokyo        |
