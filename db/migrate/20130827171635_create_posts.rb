class CreatePosts < ActiveRecord::Migration
  def change
    create_table  :posts do |t|
      t.string    :title
      t.string    :text
      t.integer   :price #is there a better datatype for currency?
      t.string    :email
      t.integer   :category_id
    end
  end
end
