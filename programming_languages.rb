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



puts reformat_languages({
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
})
