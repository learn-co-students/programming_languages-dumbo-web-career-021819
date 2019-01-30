def reformat_languages(languages) 
  new_hash = {}

  languages.each do |paradigm, object|
    object.each do |language, object2|
      object2.each do |key, type| 
        new_hash[language] = {:type => type, :style => []}
      end 
    end 
  end 
  
  languages.each do |par, obj|
    obj.each do |lang, prop|
     new_hash[lang][:style] << par
    end   
  end 
  new_hash
end