class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :lebel_id
      t.string :name
      t.string :type
      t.string :messageList_visibility
      t.string :labelList_visibility

      t.timestamps
    end
  end
end
