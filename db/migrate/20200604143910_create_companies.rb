class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :website
      t.text :about

      t.timestamps
    end
  end
end
