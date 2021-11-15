class CreateSuggestions < ActiveRecord::Migration[6.1]
  def change
    create_table :suggestions do |t|
      t.string :title
      t.text :message
      t.string :link

      t.timestamps
    end
  end
end
