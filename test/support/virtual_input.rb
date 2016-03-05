class VirtualInput
  def initialize(strings)
    @strings = strings
  end

  def gets
    @strings.shift
  end

  def self.with_fake_input(strings)
    $stdin = VirtualInput.new(strings)
    yield
  ensure
    $stdin = STDIN
  end
end
