module Composer
  module Assets
    class Guest < BaseAsset
      def url_base
        "#{COMPOSER[:url]}/guest"
      end

      def composer_clazz
        COMPOSER_CLASS[:GUEST]
      end
    end
  end
end
