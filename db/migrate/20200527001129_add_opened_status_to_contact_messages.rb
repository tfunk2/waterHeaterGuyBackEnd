class AddOpenedStatusToContactMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :contact_messages, :opened_status, :string
  end
end
