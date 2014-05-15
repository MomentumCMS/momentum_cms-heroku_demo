# This migration comes from momentum_cms_user_management_engine (originally 20140514194039)
class SorceryResetPassword < ActiveRecord::Migration
  def change
    add_column :momentum_cms_users, :reset_password_token, :string, default: nil
    add_column :momentum_cms_users, :reset_password_token_expires_at, :datetime, default: nil
    add_column :momentum_cms_users, :reset_password_email_sent_at, :datetime, default: nil

    add_index :momentum_cms_users, :reset_password_token
  end
end