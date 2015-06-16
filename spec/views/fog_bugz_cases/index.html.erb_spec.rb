require 'rails_helper'

RSpec.describe "fog_bugz_cases/index", type: :view do
  before(:each) do
    assign(:fog_bugz_cases, [
      FogBugzCase.create!(
        :case_id => 1,
        :title => "Title",
        :estimated => 2,
        :current => "9.99",
        :person => "Person",
        :resolved? => false
      ),
      FogBugzCase.create!(
        :case_id => 1,
        :title => "Title",
        :estimated => 2,
        :current => "9.99",
        :person => "Person",
        :resolved? => false
      )
    ])
  end

  it "renders a list of fog_bugz_cases" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Person".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
