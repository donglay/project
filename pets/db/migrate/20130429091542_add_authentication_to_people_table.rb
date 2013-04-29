class AddAuthenticationToPeopleTable < ActiveRecord::Migration
  def up
  	change_table  :people do |t|
  		t.string :email
  		t.string :encrypted_password
	end
  end

  def down
  	change_table :people do |t|
  		t.remove :email
  		t.remove :encrypted_password
  	end
  end

end
