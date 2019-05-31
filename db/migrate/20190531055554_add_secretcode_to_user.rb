class AddSecretcodeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :secretcode, :string
  end
end
