require 'spec_helper'

describe "volunteers/edit" do
  before(:each) do
    @volunteer = assign(:volunteer, stub_model(Volunteer,
      :name => "MyString",
      :email => "MyString",
      :availability => "MyString",
      :preferred_task => "MyText"
    ))
  end

  it "renders the edit volunteer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", volunteer_path(@volunteer), "post" do
      assert_select "input#volunteer_name[name=?]", "volunteer[name]"
      assert_select "input#volunteer_email[name=?]", "volunteer[email]"
      assert_select "input#volunteer_availability[name=?]", "volunteer[availability]"
      assert_select "textarea#volunteer_preferred_task[name=?]", "volunteer[preferred_task]"
    end
  end
end
