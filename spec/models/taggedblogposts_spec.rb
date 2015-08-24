require 'spec_helper'
require 'rails_helper'

describe TaggedBlogpost do 
  it "has a valid factory" do
    FactoryGirl.create(:TaggedBlogpost).should be_valid
  end
end