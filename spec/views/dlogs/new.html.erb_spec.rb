require 'spec_helper'

describe "dlogs/new" do
  before(:each) do
    assign(:dlog, stub_model(Dlog,
      :user_id => 1,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new dlog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dlogs_path, :method => "post" do
      assert_select "input#dlog_user_id", :name => "dlog[user_id]"
      assert_select "input#dlog_title", :name => "dlog[title]"
    end
  end
end
