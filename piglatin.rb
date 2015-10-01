class PigLatin
  def self.translate(word)
    if word_starts_with_consonant_sound(word)
      word = move_initial_consonant_to_end_of(word)
      add_ay_to_end_of(word)
    else
      add_yay_to_end_of(word)
    end
  end

  private

  def self.search_consonant_sound(word)
    word.scan(/^([bcdfghjklmnpqrstvwxyz]{1,})(a|o|e|u|i|y)/)
  end

  def self.word_starts_with_consonant_sound(word)
    search_consonant_sound(word).any?
  end

  def self.cluster_length(word)
    search_consonant_sound(word).first[0].length
  end

  def self.add_yay_to_end_of(word)
    "#{word}yay"
  end

  def self.move_initial_consonant_to_end_of(word)
    "#{word[cluster_length(word)..-1]}#{word[0..cluster_length(word)-1]}"
  end

  def self.add_ay_to_end_of(word)
    "#{word}ay"
  end
end
