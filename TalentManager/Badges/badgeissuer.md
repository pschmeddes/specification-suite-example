
# Feature: Maintain Badge Issuers

```gherkin
Scenario Outline: Create Badge Issuer

Given I am a signed in user with <Role>
Given that a BadgeIssuer with <Name> <IsExisting>
When I add a BadgeIssuer with <Name>
Then a BadgeIssuer is <IsCreated>

Examples
```

| Role | Name | IsExisting | IsCreated |
| --- | --- | --- | --- |
| TalentManager | CertifyMe | False | True |
| TalentManager | CertifyMe | True | False |
| Not TalentManager | CertifyMe | - | False |

```gherkin

Scenario OutLine Edit BadgeIssuer

Given that I am a signed in user with <Role> 
Given a BadgeIssuer with <Name>
Given that a BadgeIssuer with <NewName> <IsExisting>
When I change the BadgeIssuer <Name> to <NewName>
Then the BadgeIssuer record is <IsUpdated>

Examples

```

| Role | Name | NewName | IsExisting | IsUpdated |
| --- | --- | --- | --- | --- |
| TalentManager | CertifyMe | CertifyYou | False | True |
| TalentManager | CertifyMe | CertifyYou | True | False |
| TalentManager | CertifyMe | - | - | False |
| Not TalentManager | CertifyMe | - | - | False |

```gherkin

### Scenario Outline Delete BadgeIssuer

Given that I am a signed in user with <Role> 
Given that a BadgeIssuer with <Name> <IsExisting>
When I delete the BadgeIssuer with <Name>
Then a BadgeIssuer is <IsDeleted>

Examples
```

| Role | Name | IsExisting | IsDeleted |
| --- | --- | --- | --- |
| TalentManager | DeleteTest | False | False |
| TalentManager | DeleteTest | True | True |
| Not TalentManager | DeleteTest | - | False |
