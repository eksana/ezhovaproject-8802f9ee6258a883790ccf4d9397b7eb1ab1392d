require 'rails_helper'

RSpec.describe "platters/index", type: :view do
  before(:each) do
    assign(:platters, [
      Platter.create!(
        :name => "Name",
        :singer => "Singer",
        :year => 2,
        :genre_id => 3,
        :image_id => 4,
        :user_id => 5,
        :description => "Description"
      ),
      Platter.create!(
        :name => "Name",
        :singer => "Singer",
        :year => 2,
        :genre_id => 3,
        :image_id => 4,
        :user_id => 5,
        :description => "Description"
      )
    ])
  end

  it "renders a list of platters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Singer".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
