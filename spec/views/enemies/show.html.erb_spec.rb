require 'rails_helper'

RSpec.describe "enemies/show", type: :view do
  before(:each) do
    @enemy = assign(:enemy, Enemy.create!(
      :name => "Name",
      :hp => 2,
      :damage => 3,
      :location => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
