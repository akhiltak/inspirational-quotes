require 'rails_helper'

RSpec.describe "quotes/edit", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      :text => "MyString",
      :genre => 1,
      :author => nil,
      :status => 1
    ))
  end

  it "renders the edit quote form" do
    render

    assert_select "form[action=?][method=?]", quote_path(@quote), "post" do

      assert_select "input#quote_text[name=?]", "quote[text]"

      assert_select "input#quote_genre[name=?]", "quote[genre]"

      assert_select "input#quote_author_id[name=?]", "quote[author_id]"

      assert_select "input#quote_status[name=?]", "quote[status]"
    end
  end
end
