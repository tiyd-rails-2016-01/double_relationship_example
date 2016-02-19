class Migration < ActiveRecord::Migration

  def change
    create_table :adults do |t|
      t.string :name
    end

    create_table :children do |t|
      t.string :name
      t.integer :father_id
      t.integer :mother_id
    end
  end

end
