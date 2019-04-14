module Composer
  module IntegrationHelper
    extend ActiveSupport::Concern

    COMPOSER_CLASS = {
      HOST: 'org.example.travelchain.Host',
      ACCOUNT: 'org.example.travelchain.Account'
    }.freeze
  end
end
  