require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :name => "Name",
        :profession => 2,
        :country => "Country"
      ),
      Person.create!(
        :name => "Name",
        :profession => 2,
        :country => "Country"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
