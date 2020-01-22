require 'rails_helper'

RSpec.describe "enemies/new", type: :view do
  before(:each) do
    assign(:enemy, Enemy.new(
      :name => "MyString",
      :hp => 1,
      :damage => 1,
      :location => nil
    ))
  end

  it "renders new enemy form" do
    render

    assert_select "form[action=?][method=?]", enemies_path, "post" do

      assert_select "input[name=?]", "enemy[name]"

      assert_select "input[name=?]", "enemy[hp]"

      assert_select "input[name=?]", "enemy[damage]"

      assert_select "input[name=?]", "enemy[location_id]"
    end
  end
end
