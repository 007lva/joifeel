class CreateFeels < ActiveRecord::Migration
  def change
    create_table :feels do |t|
      t.text :description
      t.string :image_url
      t.references :user

      t.timestamps
    end
  end
end
