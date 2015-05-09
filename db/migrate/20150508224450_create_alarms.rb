class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
    	t.string  :date
    	t.string  :time
    	t.integer :user_id
    	t.integer :excuse_id

    	t.timestamps
    end
  end
end
