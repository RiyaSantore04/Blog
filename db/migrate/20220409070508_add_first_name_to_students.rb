class AddFirstNameToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :first_name, :string
  end
end
