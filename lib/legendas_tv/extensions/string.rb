class String
  def clean_quotes
    self.gsub("'", "")
  end
end

class Nil
  def clean_quotes
    nil
  end
end