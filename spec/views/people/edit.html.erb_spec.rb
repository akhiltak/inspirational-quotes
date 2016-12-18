require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :name => "MyString",
      :profession => 1,
      :country => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_name[name=?]", "person[name]"

      assert_select "input#person_profession[name=?]", "person[profession]"

      assert_select "input#person_country[name=?]", "person[country]"
    end
  end
end
