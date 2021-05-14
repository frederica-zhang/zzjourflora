ActiveAdmin.register Upload do
    action_item :only => :index do
      link_to 'Upload CSV', :action => 'upload_csv'
    end
  
    collection_action :upload_csv do
      render "admin/csv/upload_csv"
    end
  
    collection_action :import_csv, :method => :post do
      CsvDb.convert_save("post", params[:dump][:file])
      redirect_to :action => :index, :notice => "CSV imported successfully!"
    end
  
  end
