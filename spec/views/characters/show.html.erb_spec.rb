require 'rails_helper'

RSpec.describe "characters/show", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "Name",
      :type => "Type",
      :hp => 2,
      :damage => 3,
      :user_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
