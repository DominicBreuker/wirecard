require 'wirecard/version'
require 'wirecard/base'
require 'wirecard/configuration'
require 'wirecard/request'
require 'wirecard/response'
require 'wirecard/callback'
require 'wirecard/backend/base'
require 'wirecard/backend/get_order_details'
require 'wirecard/data_storage/base'
require 'wirecard/data_storage/init'
require 'wirecard/data_storage/read'
require 'wirecard/fingerprint/base'
require 'wirecard/fingerprint/sha_512'
require 'wirecard/payment_process/init'

module Wirecard
  autoload :Base, 'wirecard/base'
  autoload :Request, 'wirecard/request'
  autoload :Response, 'wirecard/response'
  autoload :Callback, 'wirecard/callback'
  autoload :Base, 'wirecard/backend/base'
  autoload :GetOrderDetails, 'wirecard/backend/get_order_details'
  autoload :Base, 'wirecard/data_storage/base'
  autoload :Init, 'wirecard/data_storage/init'
  autoload :Read, 'wirecard/data_storage/read'
  autoload :Base, 'wirecard/fingerprint/base'
  autoload :Sha512, 'wirecard/fingerprint/sha_512'
  autoload :Init, 'wirecard/payment_process/init'
  
  class << self
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Configuration.new
    end
    
    alias :config :configuration
  end
end