class CreateBestmovies < ActiveRecord::Migration
  def change
    create_table :bestmovies do |t|
      t.string :title
      t.date :movietime
      t.string :content

      t.timestamps null: false
    end
  end
end
