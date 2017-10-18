Rails.application.routes.draw do
  mount CodeVersion::Engine => "/code_version"
end
