ActiveAdmin.register Upload do
    permit_params :choose, :upload
    active_admin_importable
  
    index do
      column :choose
      column :upload
      actions
    end
  end
