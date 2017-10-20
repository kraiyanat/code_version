module CodeVersion
  class CodeVersionsController < ActionController::Base
    def show
    	file_path = "#{Rails.root}/REVISION"
    	info = {}

    	if File.exists? file_path
        info["deploy_time"] = File.mtime(file_path)
	    	info["git_commit_hash"] = File.open(file_path).each_line.first.to_s.chomp
	    else
        info["deploy_time"] = "NOT_FOUND"
	    	info["git_commit_hash"] = "NOT_FOUND"
      end

      info["environment"] = Rails.env


    	render :json => info
    end
  end
end 