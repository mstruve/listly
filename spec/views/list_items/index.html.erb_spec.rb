require 'rails_helper'

RSpec.describe "list_items/index", :type => :view do
  before(:each) do
    assign(:list_items, [
      ListItem.create!(
        :list => nil,
        :item_name => "Item Name",
        :description => "Description",
        :size => "Size",
        :number_wanted => 1,
        :store_name => "Store Name",
        :url => "Url"
      ),
      ListItem.create!(
        :list => nil,
        :item_name => "Item Name",
        :description => "Description",
        :size => "Size",
        :number_wanted => 1,
        :store_name => "Store Name",
        :url => "Url"
      )
    ])
  end

  it "renders a list of list_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Item Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Store Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
