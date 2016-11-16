def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, value|
    value.each do |language, type|
      # puts language (eg. :ruby)
      # puts type (eg. {:type => "interpreted"})
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = type
        new_hash[language][:style] = [style]
      end
    end
  end
  new_hash
end
