def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, lang|
    lang.each do |name, value|
      if !new_hash[name]
      new_hash[name] = value
      new_hash[name][:style] = []
      new_hash[name][:style] << type
    elsif !!new_hash[name]
      new_hash[name][:style] << type
    end
  end
  end
  return new_hash
end
