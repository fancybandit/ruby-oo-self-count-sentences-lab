
class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = [".", "?", "!"]
    sentences = self.split(Regexp.union(delimiters))
    sentences.delete("")
    sentences.length
  end
end

