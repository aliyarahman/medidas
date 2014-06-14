class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname1
      t.string :firstname2
      t.string :lastname1
      t.string :lastname2
      t.string :username

      t.timestamps
    end
  end
end
