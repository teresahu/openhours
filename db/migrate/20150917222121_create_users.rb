class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :headline
      t.string :location
      t.string :url
      t.string :linkedin
      t.string :github
      t.string :skype
      t.string :hangouts
      t.timestamps
    end
  end
end
