class CreateContactMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_messages do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.string :address
      t.text :message

      t.timestamps
    end
  end
end
