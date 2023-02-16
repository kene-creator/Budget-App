# spec/models/group_spec.rb

require 'rails_helper'

RSpec.describe Group, type: :model do
  describe '#total_price' do
    let(:group) { FactoryBot.build(:group) }

    context 'when the group has no entities' do
      it 'returns 0' do
        expect(group.total_price).to eq(0)
      end
    end
  end
end
