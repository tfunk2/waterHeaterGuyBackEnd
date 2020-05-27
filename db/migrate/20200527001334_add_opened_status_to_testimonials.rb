class AddOpenedStatusToTestimonials < ActiveRecord::Migration[6.0]
  def change
    add_column :testimonials, :opened_status, :string
  end
end
