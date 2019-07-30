require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image_url) }
  it { should validate_uniqueness_of(:title) }
  it { should validate_numericality_of(:price) }
  it { should allow_value('one.jpg', 'two.png', 'three.gif').for(:title) }
end
