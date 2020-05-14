class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
