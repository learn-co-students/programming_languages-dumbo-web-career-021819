require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.map do |style, language|
    language.map do |name, data|
      data.map do |type, value|
        if new_hash.has_key?(name) == false
          new_hash[name] = {type: value, style: [style]}
        else
          new_hash[name][:style] << style
        end
      end
    end
  end
  return new_hash
end

#iterate through all levels so each placeholder holds value and can be
#used for code in blocks
#javascript is the only "name" that has both styles
#write an if else statement to assign one value of styles to each name
#else iterating through again, if there is value in new_hash.key
#push the second style value into the :style hash 
