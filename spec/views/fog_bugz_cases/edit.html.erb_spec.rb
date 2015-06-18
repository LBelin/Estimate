require 'rails_helper'

RSpec.describe "fog_bugz_cases/edit", type: :view do
  before(:each) do
    @fog_bugz_case = assign(:fog_bugz_case, FogBugzCase.create!(
      :case_id => 1,
      :title => "MyString",
      :estimated => 1,
      :current => "9.99",
      :person => "MyString",
      :resolved? => false
    ))
  end

  it "renders the edit fog_bugz_case form" do
    render

    assert_select "form[action=?][method=?]", feature_fog_bugz_case_path(@fog_bugz_case), "post" do

      assert_select "input#fog_bugz_case_case_id[name=?]", "fog_bugz_case[case_id]"

      assert_select "input#fog_bugz_case_title[name=?]", "fog_bugz_case[title]"

      assert_select "input#fog_bugz_case_estimated[name=?]", "fog_bugz_case[estimated]"

      assert_select "input#fog_bugz_case_current[name=?]", "fog_bugz_case[current]"

      assert_select "input#fog_bugz_case_person[name=?]", "fog_bugz_case[person]"

      assert_select "input#fog_bugz_case_resolved?[name=?]", "fog_bugz_case[resolved?]"
    end
  end
end
