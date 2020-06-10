class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :role
      t.text :description
      t.string :work_type
      t.string :location
      t.belongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
