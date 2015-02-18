class AddUserIdToBillingData < ActiveRecord::Migration
  def change
     add_column :billing_data, :user_id, :integer 
  end
end
