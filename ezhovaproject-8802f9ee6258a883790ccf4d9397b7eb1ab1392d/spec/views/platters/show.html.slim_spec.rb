require 'rails_helper'

RSpec.describe "platters/show", type: :view do
  before(:each) do
    @platter = assign(:platter, Platter.create!(
      :name => "Name",
      :singer => "Singer",
      :year => 2,
      :genre_id => 3,
      :image_id => 4,
      :user_id => 5,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Singer/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Description/)
  end
end
