class CreateCashes < ActiveRecord::Migration[6.1]
  def change
    create_table :cashes do |t|
      t.text :name
      t.text :bank_acc_no
      t.text :posting_group
      t.decimal :balance

      t.timestamps
    end
  end
end
