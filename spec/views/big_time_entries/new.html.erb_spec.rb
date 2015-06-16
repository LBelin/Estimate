require 'rails_helper'

RSpec.describe "big_time_entries/new", type: :view do
  before(:each) do
    assign(:big_time_entry, BigTimeEntry.new(
      :Fogz => 1,
      :Resource => "MyString",
      :HrsIn => "9.99",
      :nt => "MyText"
    ))
  end

  it "renders new big_time_entry form" do
    render

    assert_select "form[action=?][method=?]", big_time_entries_path, "post" do

      assert_select "input#big_time_entry_Fogz[name=?]", "big_time_entry[Fogz]"

      assert_select "input#big_time_entry_Resource[name=?]", "big_time_entry[Resource]"

      assert_select "input#big_time_entry_HrsIn[name=?]", "big_time_entry[HrsIn]"

      assert_select "textarea#big_time_entry_nt[name=?]", "big_time_entry[nt]"
    end
  end
end
