require 'spec_helper'
require 'rails_helper'

describe Tag do 
  it "has a valid factory" do
    FactoryGirl.create(:tag).should be_valid
  end
end