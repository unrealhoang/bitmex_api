module BitmexApi
  # 
  class Stats < BaseObject
    attr_accessor :root_symbol, :currency, :volume24h, :turnover24h, :open_interest, :open_value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'root_symbol' => :'rootSymbol',
        
        # 
        :'currency' => :'currency',
        
        # 
        :'volume24h' => :'volume24h',
        
        # 
        :'turnover24h' => :'turnover24h',
        
        # 
        :'open_interest' => :'openInterest',
        
        # 
        :'open_value' => :'openValue'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'root_symbol' => :'String',
        :'currency' => :'String',
        :'volume24h' => :'Float',
        :'turnover24h' => :'Float',
        :'open_interest' => :'Float',
        :'open_value' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'rootSymbol']
        self.root_symbol = attributes[:'rootSymbol']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'volume24h']
        self.volume24h = attributes[:'volume24h']
      end
      
      if attributes[:'turnover24h']
        self.turnover24h = attributes[:'turnover24h']
      end
      
      if attributes[:'openInterest']
        self.open_interest = attributes[:'openInterest']
      end
      
      if attributes[:'openValue']
        self.open_value = attributes[:'openValue']
      end
      
    end

  end
end
