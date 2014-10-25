require 'rails_helper'

RSpec.describe "list_items/edit", :type => :view do
  before(:each) do
    @list_item = assign(:list_item, ListItem.create!(
      :list => nil,
      :item_name => "MyString",
      :description => "MyString",
      :size => "MyString",
      :number_wanted => 1,
      :store_name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit list_item form" do
    render

    assert_select "form[action=?][method=?]", list_item_path(@list_item), "post" do

      assert_select "input#list_item_list_id[name=?]", "list_item[list_id]"

      assert_select "input#list_item_item_name[name=?]", "list_item[item_name]"

      assert_select "input#list_item_description[name=?]", "list_item[description]"

      assert_select "input#list_item_size[name=?]", "list_item[size]"

      assert_select "input#list_item_number_wanted[name=?]", "list_item[number_wanted]"

      assert_select "input#list_item_store_name[name=?]", "list_item[store_name]"

      assert_select "input#list_item_url[name=?]", "list_item[url]"
    end
  end
end
