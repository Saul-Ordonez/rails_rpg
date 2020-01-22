require 'rails_helper'

RSpec.describe "enemies/edit", type: :view do
  before(:each) do
    @enemy = assign(:enemy, Enemy.create!(
      :name => "MyString",
      :hp => 1,
      :damage => 1,
      :location => nil
    ))
  end

  it "renders the edit enemy form" do
    render

    assert_select "form[action=?][method=?]", enemy_path(@enemy), "post" do

      assert_select "input[name=?]", "enemy[name]"

      assert_select "input[name=?]", "enemy[hp]"

      assert_select "input[name=?]", "enemy[damage]"

      assert_select "input[name=?]", "enemy[location_id]"
    end
  end
end
