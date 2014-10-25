require 'rails_helper'

RSpec.describe "lists/edit", :type => :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :user => nil,
      :name => "MyString",
      :description => "MyString",
      :list_type => "MyString"
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_user_id[name=?]", "list[user_id]"

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "input#list_description[name=?]", "list[description]"

      assert_select "input#list_list_type[name=?]", "list[list_type]"
    end
  end
end
