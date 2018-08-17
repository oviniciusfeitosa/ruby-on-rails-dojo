class CreateCustumers < ActiveRecord::Migration
  def change
    create_table :custumers do |t|
      t.string :name
      t.date :date_of_brith
      t.string :cpf
      t.integer :ammount_of_haircuts

      t.timestamps null: false
    end
  end
end
