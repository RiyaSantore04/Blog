class AddAttrsToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :dob, :integer
    add_column :students, :contact, :integer
    add_column :students, :age, :integer
    add_column :students, :address, :string
  end
end
