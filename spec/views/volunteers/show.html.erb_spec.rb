require 'spec_helper'

describe "volunteers/show" do
  before(:each) do
    @volunteer = assign(:volunteer, stub_model(Volunteer,
      :name => "Name",
      :email => "Email",
      :availability => "Availability",
      :preferred_task => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Availability/)
    rendered.should match(/MyText/)
  end
end
