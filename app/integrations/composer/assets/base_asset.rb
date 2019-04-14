module Composer
  module Assets
    class BaseAsset
      include Composer::IntegrationHelper
      attr_accessor :record
      
      def initialize(record)
        @record = record
      end
    end
  end
end