class CreateDcrugSliders < ActiveRecord::Migration
  def change
    create_content_table :sliders do |t|
      t.text :description, :size => (64.kilobytes + 1)
      t.timestamps
    end
  end
end
