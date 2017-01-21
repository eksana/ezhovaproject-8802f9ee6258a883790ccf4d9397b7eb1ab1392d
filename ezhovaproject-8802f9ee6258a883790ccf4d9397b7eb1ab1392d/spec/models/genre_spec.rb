require 'rails_helper'

RSpec.describe Genre, type: :model do
  subject { described_class.new(name: 'Name') }

  it 'is valid with valid attribute' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'has many platters' do
    assoc = described_class.reflect_on_association(:platters)
    expect(assoc.macro).to eq :has_many
  end
end
