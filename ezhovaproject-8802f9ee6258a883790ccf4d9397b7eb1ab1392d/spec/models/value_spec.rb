require 'rails_helper'

RSpec.describe Value, type: :model do
  subject { described_class.new(value: 10, user_id: 1, image_id: 1) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a value' do
    subject.value = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a user_id' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a image_id' do
    subject.image_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the user_id is not a number' do
    subject.user_id = 'user_id'
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the image_id is not a number' do
    subject.image_id = 'image_id'
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the value is not a number' do
    subject.value = 'value'
    expect(subject).to_not be_valid
  end

  it 'belongs to one User' do
    assoc = described_class.reflect_on_association(:user)
    expect(assoc.macro).to eq :belongs_to
  end

  it 'belongs to one Image' do
    assoc = described_class.reflect_on_association(:image)
    expect(assoc.macro).to eq :belongs_to
  end
end