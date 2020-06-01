@get
Feature: Get Process

  Scenario: User show a register
    Given user would like to insert a new process
    And user informs vara with value equal "50"
    And user informs numero_processo with value equal "4"
    And user informs natureza with value equal "COVID-19"
    And user informs partes with value equal "EUA x China"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "Pedro"
    And user informs data_entrada with value equal "01/06/2020"
    And user informs data_saida with value equal "#null#"
    And user informs data_agendamento with value equal "01/07/2020"
    And user informs status with value equal "Aguardando"
    And user informs observacao with value equal "Em analise"
    When user clicks on save button
    And user wants to see process information registered
    Then user should see "success" message
    And user should see vara with value equal "50"
    And user should see numero_processo with value equal "4"
    And user should see natureza with value equal "COVID-19"
    And user should see partes with value equal "EUA x China"
    And user should see urgente with value equal "S"
    And user should see arbitramento with value equal "S"
    And user should see assistente_social with value equal "Pedro"
    And user should see data_entrada with value equal "2020-06-01"
    And user should see data_saida with value equal "#null#"
    And user should see data_agendamento with value equal "2020-07-01"
    And user should see status with value equal "Aguardando"
    And user should see observacao with value equal "Em analise"