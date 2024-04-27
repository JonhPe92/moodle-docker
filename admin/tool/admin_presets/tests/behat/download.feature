@tool @tool_admin_presets
Feature: I can download a preset

  Background:
    Given I log in as "admin"
    And the following "tool_admin_presets > preset" exist:
      | name       |
      | Custom preset |
    And I navigate to "Site admin presets" in site administration

  @javascript
  Scenario: Core and custom preset settings can be downloaded
    Given I log in as "admin"
    And I navigate to "Site admin presets" in site administration
    When I open the action menu in "Custom preset" "table_row"
    Then following "Download" "link" in the "Custom preset" "table_row" should download between "0" and "5000" bytes
    And I open the action menu in "Starter" "table_row"
    And following "Download" "link" in the "Starter" "table_row" should download between "0" and "5000" bytes
