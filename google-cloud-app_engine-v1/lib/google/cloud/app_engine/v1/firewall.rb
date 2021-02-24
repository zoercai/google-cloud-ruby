# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/app_engine/v1/version"

require "google/cloud/app_engine/v1/firewall/credentials"
require "google/cloud/app_engine/v1/firewall/client"

module Google
  module Cloud
    module AppEngine
      module V1
        ##
        # Firewall resources are used to define a collection of access control rules
        # for an Application. Each rule is defined with a position which specifies
        # the rule's order in the sequence of rules, an IP range to be matched against
        # requests, and an action to take upon matching requests.
        #
        # Every request is evaluated against the Firewall rules in priority order.
        # Processesing stops at the first rule which matches the request's IP address.
        # A final rule always specifies an action that applies to all remaining
        # IP addresses. The default final rule for a newly-created application will be
        # set to "allow" if not otherwise specified by the user.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/app_engine/v1/firewall"
        #     client = ::Google::Cloud::AppEngine::V1::Firewall::Client.new
        #
        module Firewall
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "firewall", "helpers.rb"
require "google/cloud/app_engine/v1/firewall/helpers" if ::File.file? helper_path