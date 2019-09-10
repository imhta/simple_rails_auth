# frozen_string_literal: true

class AddRememberTokenColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :remember_token, :string
  end
end
