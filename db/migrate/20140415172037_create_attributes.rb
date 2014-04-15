class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|

      t.timestamps
    end
  end
end
