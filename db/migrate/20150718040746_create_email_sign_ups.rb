class CreateEmailSignUps < ActiveRecord::Migration
  def change
    create_table :email_sign_ups do |t|

      t.timestamps null: false
    end
  end
end
