class Addingforeignkey < ActiveRecord::Migration[5.2]
  def change
     add_foreign_key :email, :secretcode
  end
end
