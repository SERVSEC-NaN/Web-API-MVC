# frozen_string_literal: true

require 'sequel'

Sequel.migration do
  change do
    create_table(:promoters) do
      primary_key :id
      foreign_key :subscription_id, table: :subscriptions

      String :name
      String :organization, unique: true
      String :email, unique: true
    end
  end
end