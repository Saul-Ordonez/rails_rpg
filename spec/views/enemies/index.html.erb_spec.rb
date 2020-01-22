require 'rails_helper'

RSpec.describe "enemies/index", type: :view do
  before(:each) do
    assign(:enemies, [
      Enemy.create!(
        :name => "Name",
        :hp => 2,
        :damage => 3,
        :location => nil
      ),
      Enemy.create!(
        :name => "Name",
        :hp => 2,
        :damage => 3,
        :location => nil
      )
    ])
  end

  it "renders a list of enemies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
