class CreateTaggedBlogposts < ActiveRecord::Migration
  def change
    create_table :tagged_blogposts do |t|
      t.references :blog, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
    add_foreign_key :tagged_blogposts, :blogs
    add_foreign_key :tagged_blogposts, :tags
  end
end
