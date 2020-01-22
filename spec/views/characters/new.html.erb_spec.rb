require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
      :name => "MyString",
      :type => "",
      :hp => 1,
      :damage => 1,
      :user_id => 1
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input[name=?]", "character[name]"

      assert_select "input[name=?]", "character[type]"

      assert_select "input[name=?]", "character[hp]"

      assert_select "input[name=?]", "character[damage]"

      assert_select "input[name=?]", "character[user_id]"
    end
  end
end
