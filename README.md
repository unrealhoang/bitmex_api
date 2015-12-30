# bitmex_api
BitMex Api Client


# Usage

  ```ruby
  BitmexApi.configure do |config|
    config.api_key = 'Your Api Key'
    config.api_secret = 'Your Api Secret'
    config.scheme = 'https'
    config.host = 'testnet.bitmex.com' # 'www.bitmex.com' for production
    config.base_path = '/api/v1'
    config.debugging = true # debugging request
  end

  # call Api
  BitmexApi::UserApi.new.user_get_me
  BitmexApi::OrderApi.new.order_new_order('XBT24H', 100, 430)
  ```
