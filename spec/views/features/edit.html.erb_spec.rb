require 'rails_helper'

RSpec.describe "features/edit", type: :view do
  before(:each) do
    @feature = assign(:feature, Feature.create!(
      :title => "MyString",
      :estimate => 1,
      :actual => "9.99",
      :num_cases => 1,
    ))
  end

  it "renders the edit feature form" do
    render

    assert_select "form[action=?][method=?]", feature_path(@feature), "post" do

      assert_select "input#feature_title[name=?]", "feature[title]"

      assert_select "input#feature_estimate[name=?]", "feature[estimate]"

      assert_select "input#feature_actual[name=?]", "feature[actual]"

      assert_select "input#feature_num_cases[name=?]", "feature[num_cases]"

      assert_select "input#feature_completed?[name=?]", "feature[completed?]"

      assert_select "input#feature_active?[name=?]", "feature[active?]"
    end
  end
end
