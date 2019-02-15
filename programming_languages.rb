require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  
  languages.each do |style, language|
    language.each do |type, value|
      
      
      new_hash[type] = value
      new_hash[type][:style] = []
      new_hash[type][:style] << style
      
      #if new_hash[type] == :javascript
      #  new_hash[type][:style] << :functional
      #end
      
      #new_hash[type] || = value
      #new_hash[type][:style] = []
      #new_hash[type][:style] << style
      
      
      #binding.pry
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end







      #new_hash[:key1] = {key2: key2_value}
      #new_hash[ruby] = { type: type_value , style: [:oo , :functional]}
      #
      #hash
      # { key1
      #   { key1-1 = "value1" ,   this is string value
      #     key1-2 = [value 2]    this is an array value
      #   },
      #
      # ...
      # }
      
      #new_hash = {[:type] = {:value, new_array}}
      
      
      #
      #new_hash[type] || = value
      #new_hash[type][:style] = []
      #new_hash[type][:style] << style
      #
      #
      #