class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :photo_url
      t.string :email, null: false, default: ""
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
