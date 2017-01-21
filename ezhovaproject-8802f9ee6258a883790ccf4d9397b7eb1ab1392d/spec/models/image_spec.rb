require 'rails_helper'

RSpec.describe Image, type: :model do
  subject { described_class.new(name: 'Name', file: "File.jpg", theme_id: 1) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a file' do
    subject.file = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a theme_id' do
    subject.theme_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the theme_id is not a number' do
    subject.theme_id = 'theme_id'
    expect(subject).to_not be_valid
  end

  it 'belongs to one Theme' do
    assoc = described_class.reflect_on_association(:theme)
    expect(assoc.macro).to eq :belongs_to
  end

  it 'has many values' do
    assoc = described_class.reflect_on_association(:values)
    expect(assoc.macro).to eq :has_many
  end

  it 'has one platter' do
    assoc = described_class.reflect_on_association(:platter)
    expect(assoc.macro).to eq :has_one
  end

  # (если подключен gem 'shoulda')
  # it { should belong_to :theme }
  # it { should validate_presence_of :theme_id }

end