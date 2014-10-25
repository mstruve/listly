require 'rails_helper'

RSpec.describe "list_items/show", :type => :view do
  before(:each) do
    @list_item = assign(:list_item, ListItem.create!(
      :list => nil,
      :item_name => "Item Name",
      :description => "Description",
      :size => "Size",
      :number_wanted => 1,
      :store_name => "Store Name",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Item Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Store Name/)
    expect(rendered).to match(/Url/)
  end
end
