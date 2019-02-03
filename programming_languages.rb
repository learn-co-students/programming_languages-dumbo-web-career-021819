require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, name|
    name.each do |code, info|
      info.each do |type, value|
        if new_hash.key?(code) == false
          new_hash[code] = { type => value, :style => [style] }
        else
          new_hash[code][:style] << style
        end
      end
    end
  end
  new_hash
end
