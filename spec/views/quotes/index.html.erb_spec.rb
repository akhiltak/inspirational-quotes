require 'rails_helper'

RSpec.describe "quotes/index", type: :view do
  before(:each) do
    assign(:quotes, [
      Quote.create!(
        :text => "Text",
        :genre => 2,
        :author => nil,
        :status => 3
      ),
      Quote.create!(
        :text => "Text",
        :genre => 2,
        :author => nil,
        :status => 3
      )
    ])
  end

  it "renders a list of quotes" do
    render
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
