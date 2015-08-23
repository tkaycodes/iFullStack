class AddSubHeadingToBlogs < ActiveRecord::Migration
  # add new column to blogs table
  def change
    add_column :blogs, :sub_heading, :string
  end
end
