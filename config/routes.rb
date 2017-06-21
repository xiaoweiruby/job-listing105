Rails.application.routes.draw do
  devise_for :users
  root 'jobs#index'
  resources :jobs do
    resources :resumes
  end

  namespace :admin do
    resources :jobs
  end

  namespace :admin do
   resources :jobs do
     member do
       post :publish
       post :hide
     end
   end
 end

 resources :resumes
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
