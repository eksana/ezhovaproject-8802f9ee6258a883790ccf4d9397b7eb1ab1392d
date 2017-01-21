require 'rails_helper'

RSpec.describe Platter, type: :model do
  subject { described_class.new(name: 'Name', singer: 'Наутилус Помпилиус', year: 1989, genre_id: 3, image_id: 1, user_id: 1) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a singer' do
    subject.singer = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a year' do
    subject.year = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a genre_id' do
    subject.genre_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a user_id' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the year is not a number' do
    subject.year = 'year'
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the genre_id is not a number' do
    subject.genre_id = 'genre_id'
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the image_id is not a number' do
    subject.image_id = 'image_id'
    expect(subject).to_not be_valid
  end

  it 'is not valid, when the user_id is not a number' do
    subject.user_id = 'user_id'
    expect(subject).to_not be_valid
  end

  it 'belongs to one Genre' do
    assoc = described_class.reflect_on_association(:genre)
    expect(assoc.macro).to eq :belongs_to
  end

  it 'belongs to one User' do
    assoc = described_class.reflect_on_association(:genre)
    expect(assoc.macro).to eq :belongs_to
  end

  it 'belongs to one Image' do
    assoc = described_class.reflect_on_association(:genre)
    expect(assoc.macro).to eq :belongs_to
  end
end
