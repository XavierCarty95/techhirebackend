class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
