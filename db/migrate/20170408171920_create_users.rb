class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :insurance_co
      t.string :insurance_number
      t.string :email
      t.string :reason

      t.timestamps
    end
  end
end
