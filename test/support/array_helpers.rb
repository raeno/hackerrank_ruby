class Array
  def on_separate_lines
    self.map { |item| "#{item}\n"}.join
  end
end
