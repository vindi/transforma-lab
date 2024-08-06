require 'active_support/all'
ROOT = File.expand_path('..', __dir__)

Dir.glob(File.join(ROOT, 'lib', '*.rb')).each do |file|
  autoload File.basename(file, '.rb').camelize, file
end

RSpec.configure do |config|
end
