module CodeVersion
  class CodeVersionsController < ApplicationController
    def show
    	file_path = "#{Rails.root}/REVISION"
    	info = {}
    	if File.exists? file_path
	    	File.open(file_path).each_line do |line|
	    		info["git commit number"] = line
	    	end
	    else
	    	info = {"error" => "No file REVISION in Rails root directory"}
	    end
    	render :json => info
    end
  end
end 