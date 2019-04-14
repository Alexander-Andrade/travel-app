module Composer
    module Assets
      class Host < BaseAsset
        include Composer::IntegrationHelper
        attr_accessor :host
        
        def initialize(host)
          @host = host
        end

        def create
          Faraday.post("#{COMPOSER[:url]}/host",{
            "$class": COMPOSER_CLASS[:HOST],
            "email": host.email,
            "account": {
              "$class": COMPOSER_CLASS[:ACCOUNT],
              "balance": 100
            }})
        end

        def show
          Faraday.get "#{COMPOSER[:url]}/host/#{host.email}"
        end
      end
    end
  end
