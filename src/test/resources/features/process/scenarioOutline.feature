@scenarioOutline
Feature: Using Scenario Outline

  Scenario Outline: User want to insert a <description>
    Given user would like to insert a new process
    And user informs vara with value equal "<vara>"
    And user informs numero_processo with value equal "<processo>"
    And user informs natureza with value equal "<natureza>"
    And user informs partes with value equal "<partes>"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "ONU"
    And user informs data_entrada with value equal "01/06/2020"
    And user informs data_saida with value equal "#null#"
    And user informs data_agendamento with value equal "01/07/2020"
    And user informs status with value equal "Aguardando"
    And user informs observacao with value equal "Em analise"
    When user clicks on save button
    Then user should see "save with success" message
    Examples:
      | description                  | vara | processo | natureza       | partes      |
      | Process about COVID-19       | 50   | 4        | COVID-19       | EUA x China |
      | Process about Gripe Asiatica | 75   | 5        | Gripe Asiatica | EUA x China |
      | Process about Peste Bubonica | 100  | 6        | Peste Bubonica | EUA x China |
