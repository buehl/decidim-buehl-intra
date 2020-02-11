require "sidekiq/web"

Rails.application.routes.draw do
  # mount Lockup::Engine, at: '/lockup'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  mount Decidim::Core::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
    mount RailsAdmin::Engine => '/db', as: 'rails_admin'
  end
end
