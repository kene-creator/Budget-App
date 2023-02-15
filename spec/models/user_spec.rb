require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'is valid with a name' do
      user = User.new(name: 'John Doe', password: 'password', email: 'john@example.com')
      expect(user).to be_valid
    end

    it 'is invalid without a name' do
      user = User.new(name: nil)
      expect(user).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many entities' do
      assc = described_class.reflect_on_association(:entities)
      expect(assc.macro).to eq :has_many
    end

    it 'has many groups' do
      assc = described_class.reflect_on_association(:groups)
      expect(assc.macro).to eq :has_many
    end
  end
end
