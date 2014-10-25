class AddListToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :list, index: true
  end
end
