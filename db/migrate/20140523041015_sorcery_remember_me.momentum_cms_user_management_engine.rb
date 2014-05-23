# This migration comes from momentum_cms_user_management_engine (originally 20140514194038)
class SorceryRememberMe < ActiveRecord::Migration
  def change
    add_column :momentum_cms_users, :remember_me_token, :string, default: nil
    add_column :momentum_cms_users, :remember_me_token_expires_at, :datetime, default: nil

    add_index :momentum_cms_users, :remember_me_token
  end
end