require 'spec_helper'

describe "volunteers/index" do
  before(:each) do
    assign(:volunteers, [
      stub_model(Volunteer,
        :name => "Name",
        :email => "Email",
        :availability => "Availability",
        :preferred_task => "MyText"
      ),
      stub_model(Volunteer,
        :name => "Name",
        :email => "Email",
        :availability => "Availability",
        :preferred_task => "MyText"
      )
    ])
  end

  it "renders a list of volunteers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Availability".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
