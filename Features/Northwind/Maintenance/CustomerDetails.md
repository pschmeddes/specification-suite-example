
# Feature: Customer Details

Create a new Customer

## Scenario Outline: Create customer

**Given** Customer record with `<details>`

**When** Create customer record with given `<details>`

**Then** Customer details validation `<IsValid>` and created record with `<result>`

## Examples

| details | IsValid | result |
| --- | --- | --- |
| Minimum required input on Customer Details | True | Success |
| Full  input on Customer Details          | True      | Success |
| Contact Name and Country      | False     | Failed  |
| Customer details with only Contact Name, Country and Fax | False     | Failed  |
