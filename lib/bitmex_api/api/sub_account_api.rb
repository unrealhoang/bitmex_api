require "uri"

module BitmexApi
  class SubAccountApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end


    def create_sub_account(email, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SubAccountApi#create_sub_account ..."
      end
      # resource path
      path = "/user/createSubAccount".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # header parameters
      form_params = {
        email: email
      }

      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => nil,
        :auth_names => [],
        :return_type => 'Object')
      if Configuration.debugging
        Configuration.logger.debug "API called: SubAccountApi#create_sub_account. Result: #{result.inspect}"
      end
      return result
    end

    def auth_sub_account(id)
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SubAccountApi#auth_sub_account ..."
      end
      path = "/user/authSubAccount".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # header parameters
      form_params = {
        id: id
      }

      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => nil,
        :auth_names => [],
        :return_type => 'Object')
      if Configuration.debugging
        Configuration.logger.debug "API called: SubAccountApi#auth_sub_account. Result: #{result.inspect}"
      end
      return result
    end

    def transfer_funds_sub_account(from_id, to_id, amount)
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SubAccountApi#transfer_funds_sub_account ..."
      end
      path = "/user/transferFundsSubAccount".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # header parameters
      form_params = {
        fromId: from_id,
        toId: to_id,
        amount: amount
      }

      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => nil,
        :auth_names => [],
        :return_type => 'Object')
      if Configuration.debugging
        Configuration.logger.debug "API called: SubAccountApi#transfer_funds_sub_account. Result: #{result.inspect}"
      end
      return result
    end
  end
end
