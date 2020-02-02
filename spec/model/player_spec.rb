require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'validations' do
    subject { build :player }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without first name' do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without last name' do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without number' do
      subject.number = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without foot' do
      subject.foot = nil
      expect(subject).to_not be_valid
    end
  end
end
