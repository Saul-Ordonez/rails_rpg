require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :effect => "MyString",
      :value => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[effect]"

      assert_select "input[name=?]", "item[value]"
    end
  end
end
