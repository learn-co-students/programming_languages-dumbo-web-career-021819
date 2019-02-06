require 'pry'

def reformat_languages(languages)
  my_hash = {}

  languages.each do |styles, program_language|
    program_language.each do |language, attributes|
      my_hash[language] = attributes
    end
  end

  my_hash.each do |language, attributes|
    my_hash[language][:style] = []
  end

  languages.each do |styles, program_language|
    my_hash.each do |language, attributes|
      if program_language.keys.include?(language)
        my_hash[language][:style] << styles
        # binding.pry
      end
    end
  end

  my_hash
end

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }
# reformat_languages(languages)
