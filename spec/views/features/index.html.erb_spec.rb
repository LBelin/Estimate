require 'rails_helper'

RSpec.describe "features/index", type: :view do
  before(:each) do
    assign(:features, [
      Feature.create!(
        :title => "Title",
        :estimate => 1,
        :actual => "9.99",
        :num_cases => 2,
        :completed? => false,
        :active? => false
      ),
      Feature.create!(
        :title => "Title",
        :estimate => 1,
        :actual => "9.99",
        :num_cases => 2,
        :completed? => false,
        :active? => false
      )
    ])
  end

  it "renders a list of features" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
