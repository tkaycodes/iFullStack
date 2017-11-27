require 'spec_helper'
require 'rails_helper'

describe TaggedBlogpost do 
  it "has a valid factory" do
    FactoryBot.create(:TaggedBlogpost).should be_valid
  end
end