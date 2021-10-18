class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.date :birthdate
      t.string :phone
      t.string :cep
      t.string :street
      t.string :number
      t.string :neighborhood
      t.string :country
      t.string :city
      t.string :state
      t.string :complement
      t.string :facebook
      t.string :instagram
      t.string :linkedin
      t.text :bio
      t.boolean :altacupula
      

      t.timestamps
    end
  end
end
