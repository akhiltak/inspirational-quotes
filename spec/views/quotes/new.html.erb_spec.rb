require 'rails_helper'

RSpec.describe "quotes/new", type: :view do
  before(:each) do
    assign(:quote, Quote.new(
      :text => "MyString",
      :genre => 1,
      :author => nil,
      :status => 1
    ))
  end

  it "renders new quote form" do
    render

    assert_select "form[action=?][method=?]", quotes_path, "post" do

      assert_select "input#quote_text[name=?]", "quote[text]"

      assert_select "input#quote_genre[name=?]", "quote[genre]"

      assert_select "input#quote_author_id[name=?]", "quote[author_id]"

      assert_select "input#quote_status[name=?]", "quote[status]"
    end
  end
end
