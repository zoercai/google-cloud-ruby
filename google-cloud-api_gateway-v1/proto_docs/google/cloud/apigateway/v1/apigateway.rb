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


module Google
  module Cloud
    module ApiGateway
      module V1
        # An API that can be served by one or more Gateways.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of the API.
        #     Format: projects/\\{project}/locations/global/apis/\\{api}
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Created time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Updated time.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Resource labels to represent user-provided metadata.
        #     Refer to cloud documentation on labels for more details.
        #     https://cloud.google.com/compute/docs/labeling-resources
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name.
        # @!attribute [rw] managed_service
        #   @return [::String]
        #     Optional. Immutable. The name of a Google Managed Service (
        #     https://cloud.google.com/service-infrastructure/docs/glossary#managed). If
        #     not specified, a new Service will automatically be created in the same
        #     project as this API.
        # @!attribute [r] state
        #   @return [::Google::Cloud::ApiGateway::V1::Api::State]
        #     Output only. State of the API.
        class Api
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # All the possible API states.
          module State
            # API does not have a state yet.
            STATE_UNSPECIFIED = 0

            # API is being created.
            CREATING = 1

            # API is active.
            ACTIVE = 2

            # API creation failed.
            FAILED = 3

            # API is being deleted.
            DELETING = 4

            # API is being updated.
            UPDATING = 5
          end
        end

        # An API Configuration is a combination of settings for both the Managed
        # Service and Gateways serving this API Config.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of the API Config.
        #     Format: projects/\\{project}/locations/global/apis/\\{api}/configs/\\{api_config}
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Created time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Updated time.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Resource labels to represent user-provided metadata.
        #     Refer to cloud documentation on labels for more details.
        #     https://cloud.google.com/compute/docs/labeling-resources
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name.
        # @!attribute [rw] gateway_service_account
        #   @return [::String]
        #     Immutable. The Google Cloud IAM Service Account that Gateways serving this config
        #     should use to authenticate to other services. This may either be the
        #     Service Account's email
        #     (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource
        #     name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used
        #     when the service is a GCP resource such as a Cloud Run Service or an
        #     IAP-secured service.
        # @!attribute [r] service_config_id
        #   @return [::String]
        #     Output only. The ID of the associated Service Config (
        #     https://cloud.google.com/service-infrastructure/docs/glossary#config).
        # @!attribute [r] state
        #   @return [::Google::Cloud::ApiGateway::V1::ApiConfig::State]
        #     Output only. State of the API Config.
        # @!attribute [rw] openapi_documents
        #   @return [::Array<::Google::Cloud::ApiGateway::V1::ApiConfig::OpenApiDocument>]
        #     Optional. OpenAPI specification documents. If specified, grpc_services and
        #     managed_service_configs must not be included.
        # @!attribute [rw] grpc_services
        #   @return [::Array<::Google::Cloud::ApiGateway::V1::ApiConfig::GrpcServiceDefinition>]
        #     Optional. gRPC service definition files. If specified, openapi_documents must
        #     not be included.
        # @!attribute [rw] managed_service_configs
        #   @return [::Array<::Google::Cloud::ApiGateway::V1::ApiConfig::File>]
        #     Optional. Service Configuration files. At least one must be included when using gRPC
        #     service definitions. See
        #     https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview
        #     for the expected file contents.
        #
        #     If multiple files are specified, the files are merged with the following
        #     rules:
        #     * All singular scalar fields are merged using "last one wins" semantics in
        #     the order of the files uploaded.
        #     * Repeated fields are concatenated.
        #     * Singular embedded messages are merged using these rules for nested
        #     fields.
        class ApiConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A lightweight description of a file.
          # @!attribute [rw] path
          #   @return [::String]
          #     The file path (full or relative path). This is typically the path of the
          #     file when it is uploaded.
          # @!attribute [rw] contents
          #   @return [::String]
          #     The bytes that constitute the file.
          class File
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # An OpenAPI Specification Document describing an API.
          # @!attribute [rw] document
          #   @return [::Google::Cloud::ApiGateway::V1::ApiConfig::File]
          #     The OpenAPI Specification document file.
          class OpenApiDocument
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A gRPC service definition.
          # @!attribute [rw] file_descriptor_set
          #   @return [::Google::Cloud::ApiGateway::V1::ApiConfig::File]
          #     Input only. File descriptor set, generated by protoc.
          #
          #     To generate, use protoc with imports and source info included.
          #     For an example test.proto file, the following command would put the value
          #     in a new file named out.pb.
          #
          #     $ protoc --include_imports --include_source_info test.proto -o out.pb
          # @!attribute [rw] source
          #   @return [::Array<::Google::Cloud::ApiGateway::V1::ApiConfig::File>]
          #     Optional. Uncompiled proto files associated with the descriptor set, used for
          #     display purposes (server-side compilation is not supported). These
          #     should match the inputs to 'protoc' command used to generate
          #     file_descriptor_set.
          class GrpcServiceDefinition
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # All the possible API Config states.
          module State
            # API Config does not have a state yet.
            STATE_UNSPECIFIED = 0

            # API Config is being created and deployed to the API Controller.
            CREATING = 1

            # API Config is ready for use by Gateways.
            ACTIVE = 2

            # API Config creation failed.
            FAILED = 3

            # API Config is being deleted.
            DELETING = 4

            # API Config is being updated.
            UPDATING = 5

            # API Config settings are being activated in downstream systems.
            # API Configs in this state cannot be used by Gateways.
            ACTIVATING = 6
          end
        end

        # A Gateway is an API-aware HTTP proxy. It performs API-Method and/or
        # API-Consumer specific actions based on an API Config such as authentication,
        # policy enforcement, and backend selection.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of the Gateway.
        #     Format: projects/\\{project}/locations/\\{location}/gateways/\\{gateway}
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Created time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Updated time.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Resource labels to represent user-provided metadata.
        #     Refer to cloud documentation on labels for more details.
        #     https://cloud.google.com/compute/docs/labeling-resources
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name.
        # @!attribute [rw] api_config
        #   @return [::String]
        #     Required. Resource name of the API Config for this Gateway.
        #     Format: projects/\\{project}/locations/global/apis/\\{api}/configs/\\{apiConfig}
        # @!attribute [r] state
        #   @return [::Google::Cloud::ApiGateway::V1::Gateway::State]
        #     Output only. The current state of the Gateway.
        # @!attribute [r] default_hostname
        #   @return [::String]
        #     Output only. The default API Gateway host name of the form
        #     `{gateway_id}-{hash}.{region_code}.gateway.dev`.
        class Gateway
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # All the possible Gateway states.
          module State
            # Gateway does not have a state yet.
            STATE_UNSPECIFIED = 0

            # Gateway is being created.
            CREATING = 1

            # Gateway is running and ready for requests.
            ACTIVE = 2

            # Gateway creation failed.
            FAILED = 3

            # Gateway is being deleted.
            DELETING = 4

            # Gateway is being updated.
            UPDATING = 5
          end
        end

        # Request message for ApiGatewayService.ListGateways
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource of the Gateway, of the form:
        #     `projects/*/locations/*`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Order by parameters.
        class ListGatewaysRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ApiGatewayService.ListGateways
        # @!attribute [rw] gateways
        #   @return [::Array<::Google::Cloud::ApiGateway::V1::Gateway>]
        #     Gateways.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Next page token.
        # @!attribute [rw] unreachable_locations
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListGatewaysResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.GetGateway
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the form:
        #     `projects/*/locations/*/gateways/*`
        class GetGatewayRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.CreateGateway
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource of the Gateway, of the form:
        #     `projects/*/locations/*`
        # @!attribute [rw] gateway_id
        #   @return [::String]
        #     Required. Identifier to assign to the Gateway. Must be unique within scope of
        #     the parent resource.
        # @!attribute [rw] gateway
        #   @return [::Google::Cloud::ApiGateway::V1::Gateway]
        #     Required. Gateway resource.
        class CreateGatewayRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.UpdateGateway
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Field mask is used to specify the fields to be overwritten in the
        #     Gateway resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] gateway
        #   @return [::Google::Cloud::ApiGateway::V1::Gateway]
        #     Required. Gateway resource.
        class UpdateGatewayRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.DeleteGateway
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the form:
        #     `projects/*/locations/*/gateways/*`
        class DeleteGatewayRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.ListApis
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource of the API, of the form:
        #     `projects/*/locations/global`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Order by parameters.
        class ListApisRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ApiGatewayService.ListApis
        # @!attribute [rw] apis
        #   @return [::Array<::Google::Cloud::ApiGateway::V1::Api>]
        #     APIs.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Next page token.
        # @!attribute [rw] unreachable_locations
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListApisResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.GetApi
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the form:
        #     `projects/*/locations/global/apis/*`
        class GetApiRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.CreateApi
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource of the API, of the form:
        #     `projects/*/locations/global`
        # @!attribute [rw] api_id
        #   @return [::String]
        #     Required. Identifier to assign to the API. Must be unique within scope of
        #     the parent resource.
        # @!attribute [rw] api
        #   @return [::Google::Cloud::ApiGateway::V1::Api]
        #     Required. API resource.
        class CreateApiRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.UpdateApi
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Field mask is used to specify the fields to be overwritten in the
        #     Api resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] api
        #   @return [::Google::Cloud::ApiGateway::V1::Api]
        #     Required. API resource.
        class UpdateApiRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.DeleteApi
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the form:
        #     `projects/*/locations/global/apis/*`
        class DeleteApiRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.ListApiConfigs
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource of the API Config, of the form:
        #     `projects/*/locations/global/apis/*`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Order by parameters.
        class ListApiConfigsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ApiGatewayService.ListApiConfigs
        # @!attribute [rw] api_configs
        #   @return [::Array<::Google::Cloud::ApiGateway::V1::ApiConfig>]
        #     API Configs.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Next page token.
        # @!attribute [rw] unreachable_locations
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListApiConfigsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.GetApiConfig
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the form:
        #     `projects/*/locations/global/apis/*/configs/*`
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ApiGateway::V1::GetApiConfigRequest::ConfigView]
        #     Specifies which fields of the API Config are returned in the response.
        #     Defaults to `BASIC` view.
        class GetApiConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum to control which fields should be included in the response.
          module ConfigView
            CONFIG_VIEW_UNSPECIFIED = 0

            # Do not include configuration source files.
            BASIC = 1

            # Include configuration source files.
            FULL = 2
          end
        end

        # Request message for ApiGatewayService.CreateApiConfig
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource of the API Config, of the form:
        #     `projects/*/locations/global/apis/*`
        # @!attribute [rw] api_config_id
        #   @return [::String]
        #     Required. Identifier to assign to the API Config. Must be unique within scope of
        #     the parent resource.
        # @!attribute [rw] api_config
        #   @return [::Google::Cloud::ApiGateway::V1::ApiConfig]
        #     Required. API resource.
        class CreateApiConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.UpdateApiConfig
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Field mask is used to specify the fields to be overwritten in the
        #     ApiConfig resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] api_config
        #   @return [::Google::Cloud::ApiGateway::V1::ApiConfig]
        #     Required. API Config resource.
        class UpdateApiConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for ApiGatewayService.DeleteApiConfig
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the form:
        #     `projects/*/locations/global/apis/*/configs/*`
        class DeleteApiConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the metadata of the long-running operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a {::Google::Rpc::Status#code google.rpc.Status.code} of 1,
        #     corresponding to `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        # @!attribute [r] diagnostics
        #   @return [::Array<::Google::Cloud::ApiGateway::V1::OperationMetadata::Diagnostic>]
        #     Output only. Diagnostics generated during processing of configuration source files.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Diagnostic information from configuration processing.
          # @!attribute [rw] location
          #   @return [::String]
          #     Location of the diagnostic.
          # @!attribute [rw] message
          #   @return [::String]
          #     The diagnostic message.
          class Diagnostic
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end