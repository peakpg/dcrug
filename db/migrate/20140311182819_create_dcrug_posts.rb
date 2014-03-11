class CreateDcrugPosts < ActiveRecord::Migration
  def change
    create_content_table :posts do |t|
      t.string :name
      t.text :body, :size => (64.kilobytes + 1)
      t.date :release_date

      t.timestamps
    end
  end
end
