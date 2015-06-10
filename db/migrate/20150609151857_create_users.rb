class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    		t.string :first_name
    		t.string :last_name
    		t.string :email
    		t.string :password
    		t.string :password_digest
    		t.string :home_address
    		t.string :work_address
    		t.boolean :terms
    		t.string :country_code
    		t.string :phone_number
    		
      t.timestamps null: false
    end
  end
end
