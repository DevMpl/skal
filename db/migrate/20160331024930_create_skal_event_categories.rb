class CreateSkalEventCategories < ActiveRecord::Migration
  def change
    create_table :skal_event_categories do |t|

      t.string :name, null: false
      t.string :slug, null: false
      t.text :note
      t.string :status, null: false, default: 'private'

      t.timestamps null: false
    end

  end
end
