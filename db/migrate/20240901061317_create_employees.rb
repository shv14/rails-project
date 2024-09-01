class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.string :email
      t.decimal :salary

      t.timestamps
    end
  end
end
