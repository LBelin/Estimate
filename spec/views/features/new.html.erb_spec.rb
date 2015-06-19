require 'rails_helper'

RSpec.describe "features/new", type: :view do
  before(:each) do
    assign(:feature, Feature.new(
      :title => "MyString",
      :estimate => 1,
      :actual => "9.99",
      :num_cases => 1,
    ))
  end

  it "renders new feature form" do
    render

    assert_select "form[action=?][method=?]", features_path, "post" do

      assert_select "input#feature_title[name=?]", "feature[title]"

      assert_select "input#feature_estimate[name=?]", "feature[estimate]"

      assert_select "input#feature_actual[name=?]", "feature[actual]"

      assert_select "input#feature_num_cases[name=?]", "feature[num_cases]"

      assert_select "input#feature_resolved[name=?]", "feature[resolved]"

      assert_select "input#feature_active?[name=?]", "feature[active?]"
    end
  end
end
