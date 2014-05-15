MomentumCms.configure do |config|

  # The default locale for the CMS
  config.locale = :en

  config.admin_authentication = MomentumCmsUserManagement::Authentication::UserManagementAuthentication
end
