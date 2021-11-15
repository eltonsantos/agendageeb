class CreateTestimonials < ActiveRecord::Migration[6.1]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.date :member_since
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
