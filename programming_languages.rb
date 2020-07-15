def reformat_languages(languages)
  newhash = {}
  languages.each do |style, langhash|
    langhash.each do |lang, info|
      if newhash.has_key?(lang)
        newhash[lang][:style] << style
      else
        newhash[lang] = info
        newhash[lang][:style] = [style] ####### golden
      end
    end
  end
  newhash
end
