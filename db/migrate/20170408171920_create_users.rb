class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.string :insurance_co
      t.integer :insurance_number
      t.string :email
      t.string :reason

      t.timestamps
    end
  end
end
