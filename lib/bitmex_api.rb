# Common files
require 'bitmex_api/api_client'
require 'bitmex_api/api_error'
require 'bitmex_api/version'
require 'bitmex_api/configuration'

# Models
require 'bitmex_api/models/base_object'
require 'bitmex_api/models/anonymous_model_0'
require 'bitmex_api/models/anonymous_model_5'
require 'bitmex_api/models/user_preferences'
require 'bitmex_api/models/access_token'
require 'bitmex_api/models/margin'
require 'bitmex_api/models/role_mapping'
require 'bitmex_api/models/chat'
require 'bitmex_api/models/error'
require 'bitmex_api/models/connected_users'
require 'bitmex_api/models/announcement'
require 'bitmex_api/models/api_key'
require 'bitmex_api/models/execution'
require 'bitmex_api/models/instrument'
require 'bitmex_api/models/instrument_interval'
require 'bitmex_api/models/order'
require 'bitmex_api/models/liquidation_order'
require 'bitmex_api/models/order_book'
require 'bitmex_api/models/position'
require 'bitmex_api/models/quote'
require 'bitmex_api/models/settlement'
require 'bitmex_api/models/stats'
require 'bitmex_api/models/stats_history'
require 'bitmex_api/models/trade'
require 'bitmex_api/models/trade_bin'
require 'bitmex_api/models/transaction'
require 'bitmex_api/models/affiliate'
require 'bitmex_api/models/user'
require 'bitmex_api/models/user_commission'
require 'bitmex_api/models/inline_response_200'

# APIs
require 'bitmex_api/api/order_api'
require 'bitmex_api/api/api_key_api'
require 'bitmex_api/api/user_api'
require 'bitmex_api/api/announcement_api'
require 'bitmex_api/api/order_book_api'
require 'bitmex_api/api/position_api'
require 'bitmex_api/api/schema_api'
require 'bitmex_api/api/quote_api'
require 'bitmex_api/api/settlement_api'
require 'bitmex_api/api/trade_api'
require 'bitmex_api/api/execution_api'
require 'bitmex_api/api/chat_api'
require 'bitmex_api/api/instrument_api'
require 'bitmex_api/api/stats_api'

module BitmexApi
  class << self
    # Configure sdk using block.
    # BitmexApi.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
