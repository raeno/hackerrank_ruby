$LOAD_PATH.unshift File.expand_path('../test', __FILE__)

task default: 'test'

desc 'Run tests on all solutions'
task :test do
  Dir.glob('./test/**/*_test.rb').each { |file| require file}
end

task :annotate do
  $LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
  require 'annotate'

  folders_to_annotate = [ './solutions/**/*.rb', './test/**/*.rb' ]
  files_to_annotate = folders_to_annotate.flat_map do |folder|
    Dir.glob(folder).map { |filename| File.expand_path(filename, Dir.pwd) }
  end

  files_to_annotate.each { |file| Annotate.new(file).annotate }
end
