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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/app_engine/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :app_engine do |config|
  config.add_field! :endpoint,      "appengine.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module AppEngine
      ##
      # Create a new client object for Applications.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::Applications::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/Applications/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Applications service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Applications
      #
      # Manages App Engine applications.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [Applications::Client] A client object for the specified version.
      #
      def self.applications version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:Applications).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Services.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::Services::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/Services/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Services service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Services
      #
      # Manages services of an application.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [Services::Client] A client object for the specified version.
      #
      def self.services version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:Services).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Versions.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::Versions::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/Versions/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Versions service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Versions
      #
      # Manages versions of a service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [Versions::Client] A client object for the specified version.
      #
      def self.versions version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:Versions).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Instances.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::Instances::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/Instances/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Instances service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Instances
      #
      # Manages instances of a version.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [Instances::Client] A client object for the specified version.
      #
      def self.instances version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:Instances).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Firewall.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::Firewall::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/Firewall/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Firewall service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Firewall
      #
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
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [Firewall::Client] A client object for the specified version.
      #
      def self.firewall version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:Firewall).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for AuthorizedDomains.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::AuthorizedDomains::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/AuthorizedDomains/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the AuthorizedDomains service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AuthorizedDomains
      #
      # Manages domains a user is authorized to administer. To authorize use of a
      # domain, verify ownership via
      # [Webmaster Central](https://www.google.com/webmasters/verification/home).
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [AuthorizedDomains::Client] A client object for the specified version.
      #
      def self.authorized_domains version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:AuthorizedDomains).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for AuthorizedCertificates.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/AuthorizedCertificates/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the AuthorizedCertificates service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AuthorizedCertificates
      #
      # Manages SSL certificates a user is authorized to administer. A user can
      # administer any SSL certificates applicable to their authorized domains.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [AuthorizedCertificates::Client] A client object for the specified version.
      #
      def self.authorized_certificates version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:AuthorizedCertificates).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for DomainMappings.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AppEngine::V1::DomainMappings::Client](https://googleapis.dev/ruby/google-cloud-app_engine-v1/latest/Google/Cloud/AppEngine/V1/DomainMappings/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the DomainMappings service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About DomainMappings
      #
      # Manages domains serving an application.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [DomainMappings::Client] A client object for the specified version.
      #
      def self.domain_mappings version: :v1, &block
        require "google/cloud/app_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::AppEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AppEngine.const_get package_name
        package_module.const_get(:DomainMappings).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-app_engine library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional gRPC headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.app_engine if block_given?

        ::Google::Cloud.configure.app_engine
      end
    end
  end
end

helper_path = ::File.join __dir__, "app_engine", "helpers.rb"
require "google/cloud/app_engine/helpers" if ::File.file? helper_path