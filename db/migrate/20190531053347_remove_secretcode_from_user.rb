class RemoveSecretcodeFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :secretcode, :string
  end
end
