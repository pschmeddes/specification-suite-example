
# Feature: Maintain Badge Issuers

```gherkin
Scenario Outline: Create Badge Issuer

Given I am a signed in user with <role>
Given that a BadgeIssuer with <name> <IsExisting>
When I add a BadgeIssuer with <name>
Then a BadgeIssuer is <IsCreated>

Examples
```

| &lt;role&gt; | &lt;name&gt; | &lt;IsExisting&gt; | &lt;IsCreated&gt; |
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

| &lt;Role | &lt;Name&gt; | &lt;NewName&gt; | &lt;IsExisting&gt; | &lt;IsUpdated&gt; |
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

| &lt;Role&gt; | &lt;Name&gt; | &lt;IsExisting&gt; | &lt;IsDeleted&gt; |
| --- | --- | --- | --- |
| TalentManager | DeleteTest | False | False |
| TalentManager | DeleteTest | True | True |
| Not TalentManager | DeleteTest | - | False |
