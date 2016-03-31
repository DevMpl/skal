class CreateSkalEvents < ActiveRecord::Migration
  def change
    create_table :skal_events do |t|
      t.integer :event_category_id
      t.string :title
      t.datetime :started_at
      t.datetime :ended_at
      t.text :date_note
      t.string :prefecture
      t.text :place
      t.string :fee
      t.string :capacity
      t.text :entry_note
      t.text :lecturers
      t.text :content
      t.text :contact
      t.text :organizer
      t.text :homepage
      t.string :file
      t.string :status, null: false, default: 'private'

      t.timestamps null: false
    end
  end
end
