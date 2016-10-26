class CreateCompetes < ActiveRecord::Migration
  def change
    create_table :competes do |t|
      t.references :event, index: true, foreign_key: true
      t.references :athlete, index: true, foreign_key: true
      t.float :time

      t.timestamps null: false
    end
  end
end
