class AddEmailToSecretCode < ActiveRecord::Migration[5.2]
  def change
    add_column :secret_codes, :email, :string
  end
end
