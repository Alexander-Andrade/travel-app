module Composer
  module Assets
    class Host < BaseAsset
      def url_base
        "#{COMPOSER[:url]}/host"
      end

      def composer_clazz
        COMPOSER_CLASS[:HOST]
      end
    end
  end
end
