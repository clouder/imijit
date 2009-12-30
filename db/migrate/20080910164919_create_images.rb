class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.belongs_to :group
      t.string :filename
      t.string :geometry, :default => '100 100 0 0'

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
