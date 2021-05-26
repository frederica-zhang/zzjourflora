ActiveAdmin.register Upload do
    permit_params :choose, :upload
    active_admin_importable
  
  end
