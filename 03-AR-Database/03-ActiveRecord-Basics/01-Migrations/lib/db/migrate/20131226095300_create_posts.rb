class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :Name
      t.string :Source_url
      t.datetime :Created_at
    end
    # TODO: your code here to create the posts table
  end
end
