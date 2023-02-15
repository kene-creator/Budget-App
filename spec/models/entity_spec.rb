require 'rails_helper'

RSpec.describe Entity, type: :model do
  it "is invalid without a name" do
    entity = Entity.new(amount: 10)
    expect(entity).to_not be_valid
  end

  it "is invalid without an amount" do
    entity = Entity.new(name: "Test Entity")
    expect(entity).to_not be_valid
  end

  it "is invalid with a negative amount" do
    entity = Entity.new(name: "Test Entity", amount: -10)
    expect(entity).to_not be_valid
  end

  it "is invalid with zero amount" do
    entity = Entity.new(name: "Test Entity", amount: 0)
    expect(entity).to_not be_valid
  end
end
