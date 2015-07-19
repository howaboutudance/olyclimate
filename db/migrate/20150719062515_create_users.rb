class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :discuss
      t.boolean :news
      t.boolean :alerts

      t.timestamps null: false
    end
  end
end
