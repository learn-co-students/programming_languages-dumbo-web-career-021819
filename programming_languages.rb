languages_by_style =
  {
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
  }





def reformat_languages(languages)
  # your code here
  newHash ={}
  languages[:oo].each do |k,v|
  newHash[k] = v
  newHash[k][:style] = []
  end
    languages[:functional].each do |k,v|
      newHash[k] = v
      newHash[k][:style] = []
    end
    languages.each do |k,v|
      if  k == :oo
        v.each do |x,y|
          newHash[x][:style] << :oo
      end
      elsif k == :functional
        v.each do |x,y|
          newHash[x][:style] << :functional
      end
    end
  end
newHash
end
