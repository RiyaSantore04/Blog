class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :f_name
      t.string :l_name

      t.timestamps
    end
  end
end
