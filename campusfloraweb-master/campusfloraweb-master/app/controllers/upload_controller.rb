class UploadController < ApplicationController
    
    def import
        Question.import(params[:file])
        redirect_to root_url, notice: "Questions imported succefully."
    end
    
end