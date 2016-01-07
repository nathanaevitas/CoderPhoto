class CreateComments < ActiveRecord::Migration
  def change
  	drop_table :comments
    create_table :comments do |t|
    	t.text :content
    	t.belongs_to :user
    	t.belongs_to :photo

      t.timestamps null: false
    end
  end
end
