require 'rails_helper'

RSpec.describe "big_time_entries/show", type: :view do
  before(:each) do
    @big_time_entry = assign(:big_time_entry, BigTimeEntry.create!(
      :Fogz => 1,
      :Resource => "Resource",
      :HrsIn => "9.99",
      :nt => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Resource/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
