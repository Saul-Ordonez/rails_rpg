require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :type => "Type",
        :hp => 2,
        :damage => 3,
        :user_id => 4
      ),
      Character.create!(
        :name => "Name",
        :type => "Type",
        :hp => 2,
        :damage => 3,
        :user_id => 4
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
