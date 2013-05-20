DynamicFormBuilder::Application.routes.draw do
  root :to => 'admin/dashboard#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :forms

  get 'question_options' => 'questions#options'
  get 'question_set_options' => 'question_sets#options'

end
