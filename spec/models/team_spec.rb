require 'rails_helper'

RSpec.describe Team, type: :model do
  subject { build :team }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it { should validate_presence_of(:name) }
end
