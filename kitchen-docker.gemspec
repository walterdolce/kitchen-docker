# Copyright (C) 2016, Walter Dolce
# Copyright (C) 2014-2016, Sean Porter, original author
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'kitchen/driver/docker_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-docker'
  spec.version       = Kitchen::Driver::DOCKER_VERSION
  spec.authors       = ['Walter Dolce', 'Sean Porter']
  spec.email         = %w(walterdolce@gmail.com portertech@gmail.com)
  spec.description   = %q{A Docker Driver for Test Kitchen. This is a derivative work from the original driver.}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/walterdolce/kitchen-docker'
  spec.license       = 'Apache 2.0'
  spec.files         = Dir['LICENSE', '*.md', 'lib/**/*']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.executables   = []
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '1.5.0'

  spec.add_development_dependency 'bundler', '1.11.2'
  spec.add_development_dependency 'cane', '2.6.1'
  spec.add_development_dependency 'countloc', '0.4.0'
  spec.add_development_dependency 'cucumber', '2.3.2'
  spec.add_development_dependency 'rake', '10.5.0'
  spec.add_development_dependency 'rspec-expectations', '3.4.0'
  spec.add_development_dependency 'tailor', '1.4.1'
end
