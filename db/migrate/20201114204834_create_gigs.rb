class CreateGigs < ActiveRecord::Migration[6.0]
  def change
    create_table :gigs do |t|
      t.boolean :hidden
      t.string :band
      t.string :venue_stream
      t.string :v_s_link
      t.string :support
      t.date :date
      t.time :time

    end
  end
end
