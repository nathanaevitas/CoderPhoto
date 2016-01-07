class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :content
    	t.belongs_to :User
    	t.belongs_to :Photo

      t.timestamps null: false
    end
  end
end
