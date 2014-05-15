# This migration comes from momentum_cms_user_management_engine (originally 20140515013534)
class SorceryBruteForceProtection < ActiveRecord::Migration
  def change
    add_column :momentum_cms_users, :failed_logins_count, :integer, default: 0
    add_column :momentum_cms_users, :lock_expires_at, :datetime, default: nil
    add_column :momentum_cms_users, :unlock_token, :string, default: nil
  end
end