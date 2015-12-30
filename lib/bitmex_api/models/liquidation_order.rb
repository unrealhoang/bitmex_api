module BitmexApi
  # 
  class LiquidationOrder < BaseObject
    attr_accessor :symbol, :side, :qty, :price
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'symbol' => :'symbol',
        
        # 
        :'side' => :'side',
        
        # 
        :'qty' => :'qty',
        
        # 
        :'price' => :'price'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'symbol' => :'String',
        :'side' => :'String',
        :'qty' => :'Float',
        :'price' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'symbol']
        self.symbol = attributes[:'symbol']
      end
      
      if attributes[:'side']
        self.side = attributes[:'side']
      end
      
      if attributes[:'qty']
        self.qty = attributes[:'qty']
      end
      
      if attributes[:'price']
        self.price = attributes[:'price']
      end
      
    end

  end
end
