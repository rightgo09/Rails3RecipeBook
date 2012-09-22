require 'spec_helper'

describe "dlogs/show" do
  before(:each) do
    @dlog = assign(:dlog, stub_model(Dlog,
      :user_id => 1,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
  end
end
