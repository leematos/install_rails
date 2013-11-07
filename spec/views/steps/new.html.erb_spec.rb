require 'spec_helper'

describe "steps/new" do
  before(:each) do
    assign(:step, stub_model(Step,
      :title => "MyString",
      :permalink => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", steps_path, "post" do
      assert_select "input#step_title[name=?]", "step[title]"
      assert_select "input#step_permalink[name=?]", "step[permalink]"
      assert_select "textarea#step_content[name=?]", "step[content]"
    end
  end
end
