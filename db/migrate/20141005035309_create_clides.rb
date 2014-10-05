class CreateClides < ActiveRecord::Migration
  def change
    create_table :clides do |t|
      t.string :name
      t.string :url
      t.integer :memory_lo
      t.integer :memory_hi
      t.integer :space_lo
      t.integer :space_hi
      t.boolean :private
      t.boolean :colaboration
      t.boolean :community
      t.boolean :sudo
      t.boolean :ssh
      t.boolean :ssl
      t.boolean :hosted
      t.string :floss
      t.string :source

      t.timestamps
    end
  end
end
