class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string  :ip
      t.integer :web
      t.integer :native
      t.integer :stability
      t.integer :performance
      t.integer :lag
      t.integer :features
      t.integer :debugging
      t.integer :community
      t.integer :support
      t.integer :pricing
      t.integer :overall

      t.integer :clide_id , :null => false
      t.timestamps
    end
  end
end
