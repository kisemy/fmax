class CreateAcccharts < ActiveRecord::Migration[6.1]
  def change
    create_table :acccharts do |t|
      t.text :account_name
      t.text :type
      t.text :categoty
      t.text :class
      t.decimal :balance

      t.timestamps
    end
  end
end
