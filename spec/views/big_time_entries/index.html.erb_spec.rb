require 'rails_helper'

RSpec.describe "big_time_entries/index", type: :view do
  before(:each) do
    assign(:big_time_entries, [
      BigTimeEntry.create!(
        :Fogz => 1,
        :Resource => "Resource",
        :HrsIn => "9.99",
        :nt => "MyText"
      ),
      BigTimeEntry.create!(
        :Fogz => 1,
        :Resource => "Resource",
        :HrsIn => "9.99",
        :nt => "MyText"
      )
    ])
  end

  it "renders a list of big_time_entries" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Resource".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
