module Composer
  module Assets
    class User < BaseAsset
      def create
        Faraday.post(url_base,{
          "$class": composer_clazz,
          "email": record.email,
          "account": {
            "$class": COMPOSER_CLASS[:ACCOUNT],
            "balance": 100
          }})
      end

      def show
        Faraday.get "#{url_base}/#{record.email}"
      end
      
      protected

      def url_base
        raise 'url_base should be redefined'
      end

      def composer_clazz
        raise 'composer_clazz should be redefined'
      end
    end
  end
end
