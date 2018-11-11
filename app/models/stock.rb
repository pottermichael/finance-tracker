class Stock < ApplicationRecord
    def self.new_from_lookup(ticker_symbol)
        looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
        #below is equal to Stock.new
        
        new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol)
    end
    
    def self.strip_commas(number)
        number.gsub(",","")
    end
    
end
