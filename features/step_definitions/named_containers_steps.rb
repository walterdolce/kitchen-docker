#
#   Copyright 2016 Walter Dolce
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
Given(/^I have a suite "([^"]*)"$/) do |suite_name|
  has_expected_suite = false
  suites = `bundle exec kitchen list --bare`.split("\n")
  suites.each do |suite|
    if suite.match(/^#{Regexp.escape(suite_name)}/)
      has_expected_suite = true
      break
    end
  end
  expect(has_expected_suite).to eq(true)
end

Given(/^a platform "([^"]*)" I want to run my suite on$/) do |platform_name|
  has_expected_platform = false
  platforms = `bundle exec kitchen list --bare`.split("\n")
  platforms.each do |platform|
    if platform.match(/#{Regexp.escape(platform_name)}$/)
      has_expected_platform = true
      break
    end
  end
  expect(has_expected_platform).to eq(true)
end

When(/^I run the suite "([^"]*)"$/) do |suite|
  `bundle exec kitchen create #{suite}`
end

Then(/^a container "([^"]*)" will be created$/) do |expected_container_name|
  expect(
      `docker ps -f 'name=#{expected_container_name}' | tail -n +2`
  ).not_to eq('')
end