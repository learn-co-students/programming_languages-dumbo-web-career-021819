require 'pry'

def reformat_languages(languages)
  new_hash = {}
    
  #[oo/functional], [ruby/javas/pyt/java/clos/er/sca/javas]
  languages.each { |firstKey, firstValue|
    #[ruby/javas/pyt/java/clos/er/sca/javas], [type]
    firstValue.each { |secondKey, secondValue|
      if new_hash[secondKey] == nil
        new_hash[secondKey] = secondValue
        new_hash[secondKey][:style] = []
        new_hash[secondKey][:style].push(firstKey)
      else
      new_hash[secondKey][:style].push(firstKey)
      end
    }
  }
    
  return new_hash
end