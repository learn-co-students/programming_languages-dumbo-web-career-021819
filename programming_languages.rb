
def add_attribute(array, attribute)
  if !array.include?(attribute)
    array << attribute
  end
  array
end

def reformat_languages(languages)
  # your code here
  result = Hash.new
  languages.each do |style, lang_hash|
    
    lang_hash.each do |lang_sym, type_hash|
      match = false
      result.each do |r_lang_sym, r_attributes|
        if r_lang_sym == lang_sym
          match = true
          r_attributes[:type] = type_hash[:type]
          add_attribute(r_attributes[:style], style)
        end
      end
      if !match
        result[lang_sym] = {
          :type => type_hash[:type],
          :style => [style]
        }
      end
    end

  end
  result
end
