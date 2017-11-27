require 'spec_helper'
require 'rails_helper'

describe Tag do 
  it "has a valid factory" do
    FactoryBot.create(:tag).should be_valid
  end
end