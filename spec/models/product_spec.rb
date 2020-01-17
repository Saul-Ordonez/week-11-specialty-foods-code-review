require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }
end

  # it { should validate_length_of(:name).is_at_most(100) }
  # it { should allow_value('tim').for(:name) }
  # it { should_not allow_value('123').for(:name) }
  # it { should_not allow_value('~').for(:name) }
