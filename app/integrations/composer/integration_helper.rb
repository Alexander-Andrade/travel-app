module Composer
  module IntegrationHelper
    extend ActiveSupport::Concern

    COMPOSER_CLASS = {
      HOST: 'org.example.travelchain.Host',
      GUEST: 'org.example.travelchain.Guest'
      ACCOUNT: 'org.example.travelchain.Account'
    }.freeze
  end
end
  