require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "MyString",
      :type => "",
      :hp => 1,
      :damage => 1,
      :user_id => 1
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

      assert_select "input[name=?]", "character[name]"

      assert_select "input[name=?]", "character[type]"

      assert_select "input[name=?]", "character[hp]"

      assert_select "input[name=?]", "character[damage]"

      assert_select "input[name=?]", "character[user_id]"
    end
  end
end
