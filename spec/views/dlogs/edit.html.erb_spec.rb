require 'spec_helper'

describe "dlogs/edit" do
  before(:each) do
    @dlog = assign(:dlog, stub_model(Dlog,
      :user_id => 1,
      :title => "MyString"
    ))
  end

  it "renders the edit dlog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dlogs_path(@dlog), :method => "post" do
      assert_select "input#dlog_user_id", :name => "dlog[user_id]"
      assert_select "input#dlog_title", :name => "dlog[title]"
    end
  end
end
