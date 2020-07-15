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
  #first I create a newHash then I iterate over every element in the :oo key
  #Assign newHash the first value from languages:oo to = the value
  #then create a :style hash to equal a blank array.
  end
    languages[:functional].each do |k,v|
      newHash[k] = v
      newHash[k][:style] = []
      #Repeat steps above for every element in the functional key
    end
    languages.each do |k,v|
      #Create the conditions for adding the into the style hash within newHash
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
