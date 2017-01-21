require 'rails_helper'

RSpec.describe "platters/new", type: :view do
  before(:each) do
    assign(:platter, Platter.new(
      :name => "MyString",
      :singer => "MyString",
      :year => 1,
      :genre_id => 1,
      :image_id => 1,
      :user_id => 1,
      :description => "MyString"
    ))
  end

  it "renders new platter form" do
    render

    assert_select "form[action=?][method=?]", platters_path, "post" do

      assert_select "input#platter_name[name=?]", "platter[name]"

      assert_select "input#platter_singer[name=?]", "platter[singer]"

      assert_select "input#platter_year[name=?]", "platter[year]"

      assert_select "input#platter_genre_id[name=?]", "platter[genre_id]"

      assert_select "input#platter_image_id[name=?]", "platter[image_id]"

      assert_select "input#platter_user_id[name=?]", "platter[user_id]"

      assert_select "input#platter_description[name=?]", "platter[description]"
    end
  end
end
