require 'rails_helper'

RSpec.describe "lists/index", :type => :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        :user => nil,
        :name => "Name",
        :description => "Description",
        :list_type => "List Type"
      ),
      List.create!(
        :user => nil,
        :name => "Name",
        :description => "Description",
        :list_type => "List Type"
      )
    ])
  end

  it "renders a list of lists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "List Type".to_s, :count => 2
  end
end
