require 'spec_helper'
require 'rails_helper'

describe Blog do 
  it "has a valid factory" do
    FactoryGirl.create(:blog).should be_valid
  end
end