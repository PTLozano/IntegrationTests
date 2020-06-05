@put
Feature: Put Process

  Scenario: User want to update a register
    Given user would like to insert a new process
    And user informs vara with value equal "50"
    And user informs numero_processo with value equal "4"
    And user informs natureza with value equal "COVID-20"
    And user informs partes with value equal "EUA x Russia"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "ONU"
    And user informs data_entrada with value equal "01/06/2020"
    And user informs data_saida with value equal "#null#"
    And user informs data_agendamento with value equal "01/07/2020"
    And user informs status with value equal "Aguardando"
    And user informs observacao with value equal "Em analise"
    When user clicks on save button
    And user informs natureza with value equal "COVID-19"
    And user informs partes with value equal "EUA x China"
    And user informs assistente_social with value equal "Pedro"
    And user clicks on save button again
    And user wants to see process information registered
    Then user should see "success" message
    And user should see natureza with value equal "COVID-19"
    And user should see partes with value equal "EUA x China"
    And user should see assistente_social with value equal "Pedro"

  Scenario: User update a non-existing process
    Given the user update "numero_processo" with value "4000"
    When the user clicks on button to update an invalid id process
    Then user should see "not found" message
