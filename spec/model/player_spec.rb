require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'validations' do
    subject { build :player }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:foot) }
  end
end
