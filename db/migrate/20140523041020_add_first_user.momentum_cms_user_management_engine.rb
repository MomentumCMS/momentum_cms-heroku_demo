# This migration comes from momentum_cms_user_management_engine (originally 20140517051357)
class AddFirstUser < ActiveRecord::Migration
  def up
    MomentumCms::User.create!(email: 'admin@localhost',
                              password: 'password',
                              password_confirmation: 'password',
                              activation_state: 'active')
    MomentumCms::User.first.activate!
  end

  def down
  end
end
