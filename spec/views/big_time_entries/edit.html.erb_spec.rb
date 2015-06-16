require 'rails_helper'

RSpec.describe "big_time_entries/edit", type: :view do
  before(:each) do
    @big_time_entry = assign(:big_time_entry, BigTimeEntry.create!(
      :Fogz => 1,
      :Resource => "MyString",
      :HrsIn => "9.99",
      :nt => "MyText"
    ))
  end

  it "renders the edit big_time_entry form" do
    render

    assert_select "form[action=?][method=?]", big_time_entry_path(@big_time_entry), "post" do

      assert_select "input#big_time_entry_Fogz[name=?]", "big_time_entry[Fogz]"

      assert_select "input#big_time_entry_Resource[name=?]", "big_time_entry[Resource]"

      assert_select "input#big_time_entry_HrsIn[name=?]", "big_time_entry[HrsIn]"

      assert_select "textarea#big_time_entry_nt[name=?]", "big_time_entry[nt]"
    end
  end
end
