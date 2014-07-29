class CreatePosts < ActiveRecord::Migration
  def up
    create_table  :post do |t|
      t.string    :name
      t.datetime  :date
      t.string    :source_url
      t.integer   :rating
    end
  end
end