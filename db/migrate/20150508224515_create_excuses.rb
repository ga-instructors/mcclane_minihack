class CreateExcuses < ActiveRecord::Migration
  def change
    create_table :excuses do |t|
    	t.text :excuse
    end
  end
end
