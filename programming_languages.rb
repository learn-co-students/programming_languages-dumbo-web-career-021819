require 'pry'


def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, language|
        language.each do |lang, attribute|
          new_hash[lang] ||= attribute
          new_hash[lang][:style] ||= []
          new_hash[lang][:style] << style
        end
      end
    new_hash
end
