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
Feature: Named containers
  In order to easily refer to containers when testing
  As a kitchen-docker user
  I want to containers to have be named

  Scenario: kitchen-docker creates named containers by default
    Given I have a suite "named-containers"
    And a platform "centos-7" I want to run my suite on
    When I run the suite "named-containers-centos-7"
    Then a container "named-containers-centos-7" will be created