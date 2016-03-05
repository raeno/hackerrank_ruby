class Annotate

  PROBLEM_HEADER = '== Problem Info'
  PROBLEM_FOOTER = '===='

  ANNOTATION_REGEXP = /(##{PROBLEM_HEADER}.+#{PROBLEM_FOOTER}\n)/m

  attr_reader :path
  attr_reader :options

  def initialize(path, options = {})
    @path = path
    @options = options
  end

  def annotate
    old_content = File.read path
    annotation = annotation_content
    return false unless annotation

    new_content = content_with_annotation old_content, annotation
    File.write path, new_content
    puts "Annotated: #{path}"
  end

  private

  def content_with_annotation(content, annotation)
    if annotated?(content)
      content.gsub(ANNOTATION_REGEXP, annotation)
    else
      content.insert(0, annotation)
    end
  end

  def annotated?(content)
    ANNOTATION_REGEXP.match content
  end


  def annotation_content
    annotation_name = path.match(/(?:solutions|test)\/(.+?)(?:_test)?\.rb/)[1]
    annotation_path = "doc/#{annotation_name}.md"
    return false unless File.exists?(annotation_path)
    doc_content = File.read annotation_path
    doc_content = doc_content.gsub(/^.*$/, '# \&')
    "##{PROBLEM_HEADER}\n#\n#{doc_content}#\n##{PROBLEM_FOOTER}\n"
  end
end
