class AddHeadlineToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :headline, :string
  end
end
