class CreateSecretCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_codes do |t|
      t.string :secretcode

      t.timestamps
    end
  end
end
