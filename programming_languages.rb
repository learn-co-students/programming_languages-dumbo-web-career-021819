def reformat_languages(languages)
  languages_reordered = {}
  
  languages.each do |lang_style, lang_list|
    lang_list.each do |lang_name, lang_attr|
      lang_entry = { lang_name => {:type => lang_attr[:type], :style => [lang_style] }}
      languages_reordered.merge!(lang_entry) do |key, lang_ent1, lang_ent2|
         {type: lang_attr[:type], style: (lang_ent1[:style].concat(lang_ent2[:style]))}
      end
    end
  end
  return languages_reordered
end
