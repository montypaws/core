class AddVendorIdToPeople < ActiveRecord::Migration
  def change
    add_column :addresses, :quickbooks_vendor_id, :integer
    add_column :cash_outs, :quickbooks_txn_id, :integer
  end
end
