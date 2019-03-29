TestApp::Application.routes.draw do
  resources :blogs, defaults: { :format => :json }

  mount Rswag3::Api::Engine => 'api-docs'
  mount Rswag3::Ui::Engine => 'api-docs'
end
