module CodeVersion
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
