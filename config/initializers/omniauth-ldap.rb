# frozen_string_literal: true

require 'omniauth-ldap'

if Rails.application.secrets.dig(:omniauth, :ldap, :enabled)
  Devise.setup do |config|
    config.omniauth :ldap,
      :title => Rails.application.secrets.dig(:omniauth, :ldap, :title),
      :host =>  Rails.application.secrets.dig(:omniauth, :ldap, :host),
      :base =>  Rails.application.secrets.dig(:omniauth, :ldap, :base),
      :uid => Rails.application.secrets.dig(:omniauth, :ldap, :uid),
      :port => Rails.application.secrets.dig(:omniauth, :ldap, :port),
      :method => Rails.application.secrets.dig(:omniauth, :ldap, :method),
      :bind_dn => Rails.application.secrets.dig(:omniauth, :ldap, :bind_dn),
      :password => Rails.application.secrets.dig(:omniauth, :ldap, :password),
      scope: :public
  end

  Decidim::User.omniauth_providers << :ldap

  Rails.application.config.assets.precompile += %w( omniauth_form.css )

  module OmniAuth
    class Form
      protected

      def css
        h = ActionController::Base.helpers
        h.stylesheet_link_tag("omniauth_form", media: "all")
      end
    end
  end

end
