require 'rails_helper'

RSpec.describe FoodFacility, type: :model do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:description).of_type(:text) }
end
