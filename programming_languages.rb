def reformat_languages(languages)
  languages_new = {}
  languages.each do |styles, names|
    names.each do |name, type|
      type.each do |key, value|
        languages_new[name] = {:type => nil, :style => []}
        languages_new[name][:type] = value
      end
    end
  end
  languages.each do |styles, names|
    names.each do |name, type|
      languages_new[name][:style] << styles
    end
  end
  languages_new
end





