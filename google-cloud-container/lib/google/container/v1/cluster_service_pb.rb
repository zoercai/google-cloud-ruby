# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/container/v1/cluster_service.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.container.v1.NodeConfig" do
    optional :machine_type, :string, 1
    optional :disk_size_gb, :int32, 2
    repeated :oauth_scopes, :string, 3
    optional :service_account, :string, 9
    map :metadata, :string, :string, 4
    optional :image_type, :string, 5
    map :labels, :string, :string, 6
    optional :local_ssd_count, :int32, 7
    repeated :tags, :string, 8
    optional :preemptible, :bool, 10
    repeated :accelerators, :message, 11, "google.container.v1.AcceleratorConfig"
    optional :disk_type, :string, 12
    optional :min_cpu_platform, :string, 13
    repeated :taints, :message, 15, "google.container.v1.NodeTaint"
    optional :shielded_instance_config, :message, 20, "google.container.v1.ShieldedInstanceConfig"
  end
  add_message "google.container.v1.ShieldedInstanceConfig" do
    optional :enable_secure_boot, :bool, 1
    optional :enable_integrity_monitoring, :bool, 2
  end
  add_message "google.container.v1.NodeTaint" do
    optional :key, :string, 1
    optional :value, :string, 2
    optional :effect, :enum, 3, "google.container.v1.NodeTaint.Effect"
  end
  add_enum "google.container.v1.NodeTaint.Effect" do
    value :EFFECT_UNSPECIFIED, 0
    value :NO_SCHEDULE, 1
    value :PREFER_NO_SCHEDULE, 2
    value :NO_EXECUTE, 3
  end
  add_message "google.container.v1.MasterAuth" do
    optional :username, :string, 1
    optional :password, :string, 2
    optional :client_certificate_config, :message, 3, "google.container.v1.ClientCertificateConfig"
    optional :cluster_ca_certificate, :string, 100
    optional :client_certificate, :string, 101
    optional :client_key, :string, 102
  end
  add_message "google.container.v1.ClientCertificateConfig" do
    optional :issue_client_certificate, :bool, 1
  end
  add_message "google.container.v1.AddonsConfig" do
    optional :http_load_balancing, :message, 1, "google.container.v1.HttpLoadBalancing"
    optional :horizontal_pod_autoscaling, :message, 2, "google.container.v1.HorizontalPodAutoscaling"
    optional :kubernetes_dashboard, :message, 3, "google.container.v1.KubernetesDashboard"
    optional :network_policy_config, :message, 4, "google.container.v1.NetworkPolicyConfig"
    optional :cloud_run_config, :message, 7, "google.container.v1.CloudRunConfig"
  end
  add_message "google.container.v1.HttpLoadBalancing" do
    optional :disabled, :bool, 1
  end
  add_message "google.container.v1.HorizontalPodAutoscaling" do
    optional :disabled, :bool, 1
  end
  add_message "google.container.v1.KubernetesDashboard" do
    optional :disabled, :bool, 1
  end
  add_message "google.container.v1.NetworkPolicyConfig" do
    optional :disabled, :bool, 1
  end
  add_message "google.container.v1.PrivateClusterConfig" do
    optional :enable_private_nodes, :bool, 1
    optional :enable_private_endpoint, :bool, 2
    optional :master_ipv4_cidr_block, :string, 3
    optional :private_endpoint, :string, 4
    optional :public_endpoint, :string, 5
  end
  add_message "google.container.v1.AuthenticatorGroupsConfig" do
    optional :enabled, :bool, 1
    optional :security_group, :string, 2
  end
  add_message "google.container.v1.CloudRunConfig" do
    optional :disabled, :bool, 1
  end
  add_message "google.container.v1.MasterAuthorizedNetworksConfig" do
    optional :enabled, :bool, 1
    repeated :cidr_blocks, :message, 2, "google.container.v1.MasterAuthorizedNetworksConfig.CidrBlock"
  end
  add_message "google.container.v1.MasterAuthorizedNetworksConfig.CidrBlock" do
    optional :display_name, :string, 1
    optional :cidr_block, :string, 2
  end
  add_message "google.container.v1.LegacyAbac" do
    optional :enabled, :bool, 1
  end
  add_message "google.container.v1.NetworkPolicy" do
    optional :provider, :enum, 1, "google.container.v1.NetworkPolicy.Provider"
    optional :enabled, :bool, 2
  end
  add_enum "google.container.v1.NetworkPolicy.Provider" do
    value :PROVIDER_UNSPECIFIED, 0
    value :CALICO, 1
  end
  add_message "google.container.v1.BinaryAuthorization" do
    optional :enabled, :bool, 1
  end
  add_message "google.container.v1.IPAllocationPolicy" do
    optional :use_ip_aliases, :bool, 1
    optional :create_subnetwork, :bool, 2
    optional :subnetwork_name, :string, 3
    optional :cluster_ipv4_cidr, :string, 4
    optional :node_ipv4_cidr, :string, 5
    optional :services_ipv4_cidr, :string, 6
    optional :cluster_secondary_range_name, :string, 7
    optional :services_secondary_range_name, :string, 8
    optional :cluster_ipv4_cidr_block, :string, 9
    optional :node_ipv4_cidr_block, :string, 10
    optional :services_ipv4_cidr_block, :string, 11
    optional :tpu_ipv4_cidr_block, :string, 13
  end
  add_message "google.container.v1.Cluster" do
    optional :name, :string, 1
    optional :description, :string, 2
    optional :initial_node_count, :int32, 3
    optional :node_config, :message, 4, "google.container.v1.NodeConfig"
    optional :master_auth, :message, 5, "google.container.v1.MasterAuth"
    optional :logging_service, :string, 6
    optional :monitoring_service, :string, 7
    optional :network, :string, 8
    optional :cluster_ipv4_cidr, :string, 9
    optional :addons_config, :message, 10, "google.container.v1.AddonsConfig"
    optional :subnetwork, :string, 11
    repeated :node_pools, :message, 12, "google.container.v1.NodePool"
    repeated :locations, :string, 13
    optional :enable_kubernetes_alpha, :bool, 14
    map :resource_labels, :string, :string, 15
    optional :label_fingerprint, :string, 16
    optional :legacy_abac, :message, 18, "google.container.v1.LegacyAbac"
    optional :network_policy, :message, 19, "google.container.v1.NetworkPolicy"
    optional :ip_allocation_policy, :message, 20, "google.container.v1.IPAllocationPolicy"
    optional :master_authorized_networks_config, :message, 22, "google.container.v1.MasterAuthorizedNetworksConfig"
    optional :maintenance_policy, :message, 23, "google.container.v1.MaintenancePolicy"
    optional :binary_authorization, :message, 24, "google.container.v1.BinaryAuthorization"
    optional :autoscaling, :message, 26, "google.container.v1.ClusterAutoscaling"
    optional :network_config, :message, 27, "google.container.v1.NetworkConfig"
    optional :default_max_pods_constraint, :message, 30, "google.container.v1.MaxPodsConstraint"
    optional :resource_usage_export_config, :message, 33, "google.container.v1.ResourceUsageExportConfig"
    optional :authenticator_groups_config, :message, 34, "google.container.v1.AuthenticatorGroupsConfig"
    optional :private_cluster_config, :message, 37, "google.container.v1.PrivateClusterConfig"
    optional :database_encryption, :message, 38, "google.container.v1.DatabaseEncryption"
    optional :vertical_pod_autoscaling, :message, 39, "google.container.v1.VerticalPodAutoscaling"
    optional :self_link, :string, 100
    optional :zone, :string, 101
    optional :endpoint, :string, 102
    optional :initial_cluster_version, :string, 103
    optional :current_master_version, :string, 104
    optional :current_node_version, :string, 105
    optional :create_time, :string, 106
    optional :status, :enum, 107, "google.container.v1.Cluster.Status"
    optional :status_message, :string, 108
    optional :node_ipv4_cidr_size, :int32, 109
    optional :services_ipv4_cidr, :string, 110
    repeated :instance_group_urls, :string, 111
    optional :current_node_count, :int32, 112
    optional :expire_time, :string, 113
    optional :location, :string, 114
    optional :enable_tpu, :bool, 115
    optional :tpu_ipv4_cidr_block, :string, 116
    repeated :conditions, :message, 118, "google.container.v1.StatusCondition"
  end
  add_enum "google.container.v1.Cluster.Status" do
    value :STATUS_UNSPECIFIED, 0
    value :PROVISIONING, 1
    value :RUNNING, 2
    value :RECONCILING, 3
    value :STOPPING, 4
    value :ERROR, 5
    value :DEGRADED, 6
  end
  add_message "google.container.v1.ClusterUpdate" do
    optional :desired_node_version, :string, 4
    optional :desired_monitoring_service, :string, 5
    optional :desired_addons_config, :message, 6, "google.container.v1.AddonsConfig"
    optional :desired_node_pool_id, :string, 7
    optional :desired_image_type, :string, 8
    optional :desired_database_encryption, :message, 46, "google.container.v1.DatabaseEncryption"
    optional :desired_node_pool_autoscaling, :message, 9, "google.container.v1.NodePoolAutoscaling"
    repeated :desired_locations, :string, 10
    optional :desired_master_authorized_networks_config, :message, 12, "google.container.v1.MasterAuthorizedNetworksConfig"
    optional :desired_cluster_autoscaling, :message, 15, "google.container.v1.ClusterAutoscaling"
    optional :desired_binary_authorization, :message, 16, "google.container.v1.BinaryAuthorization"
    optional :desired_logging_service, :string, 19
    optional :desired_resource_usage_export_config, :message, 21, "google.container.v1.ResourceUsageExportConfig"
    optional :desired_vertical_pod_autoscaling, :message, 22, "google.container.v1.VerticalPodAutoscaling"
    optional :desired_intra_node_visibility_config, :message, 26, "google.container.v1.IntraNodeVisibilityConfig"
    optional :desired_master_version, :string, 100
  end
  add_message "google.container.v1.Operation" do
    optional :name, :string, 1
    optional :zone, :string, 2
    optional :operation_type, :enum, 3, "google.container.v1.Operation.Type"
    optional :status, :enum, 4, "google.container.v1.Operation.Status"
    optional :detail, :string, 8
    optional :status_message, :string, 5
    optional :self_link, :string, 6
    optional :target_link, :string, 7
    optional :location, :string, 9
    optional :start_time, :string, 10
    optional :end_time, :string, 11
    repeated :cluster_conditions, :message, 13, "google.container.v1.StatusCondition"
    repeated :nodepool_conditions, :message, 14, "google.container.v1.StatusCondition"
  end
  add_enum "google.container.v1.Operation.Status" do
    value :STATUS_UNSPECIFIED, 0
    value :PENDING, 1
    value :RUNNING, 2
    value :DONE, 3
    value :ABORTING, 4
  end
  add_enum "google.container.v1.Operation.Type" do
    value :TYPE_UNSPECIFIED, 0
    value :CREATE_CLUSTER, 1
    value :DELETE_CLUSTER, 2
    value :UPGRADE_MASTER, 3
    value :UPGRADE_NODES, 4
    value :REPAIR_CLUSTER, 5
    value :UPDATE_CLUSTER, 6
    value :CREATE_NODE_POOL, 7
    value :DELETE_NODE_POOL, 8
    value :SET_NODE_POOL_MANAGEMENT, 9
    value :AUTO_REPAIR_NODES, 10
    value :AUTO_UPGRADE_NODES, 11
    value :SET_LABELS, 12
    value :SET_MASTER_AUTH, 13
    value :SET_NODE_POOL_SIZE, 14
    value :SET_NETWORK_POLICY, 15
    value :SET_MAINTENANCE_POLICY, 16
  end
  add_message "google.container.v1.CreateClusterRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster, :message, 3, "google.container.v1.Cluster"
    optional :parent, :string, 5
  end
  add_message "google.container.v1.GetClusterRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :name, :string, 5
  end
  add_message "google.container.v1.UpdateClusterRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :update, :message, 4, "google.container.v1.ClusterUpdate"
    optional :name, :string, 5
  end
  add_message "google.container.v1.UpdateNodePoolRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool_id, :string, 4
    optional :node_version, :string, 5
    optional :image_type, :string, 6
    optional :name, :string, 8
  end
  add_message "google.container.v1.SetNodePoolAutoscalingRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool_id, :string, 4
    optional :autoscaling, :message, 5, "google.container.v1.NodePoolAutoscaling"
    optional :name, :string, 6
  end
  add_message "google.container.v1.SetLoggingServiceRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :logging_service, :string, 4
    optional :name, :string, 5
  end
  add_message "google.container.v1.SetMonitoringServiceRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :monitoring_service, :string, 4
    optional :name, :string, 6
  end
  add_message "google.container.v1.SetAddonsConfigRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :addons_config, :message, 4, "google.container.v1.AddonsConfig"
    optional :name, :string, 6
  end
  add_message "google.container.v1.SetLocationsRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    repeated :locations, :string, 4
    optional :name, :string, 6
  end
  add_message "google.container.v1.UpdateMasterRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :master_version, :string, 4
    optional :name, :string, 7
  end
  add_message "google.container.v1.SetMasterAuthRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :action, :enum, 4, "google.container.v1.SetMasterAuthRequest.Action"
    optional :update, :message, 5, "google.container.v1.MasterAuth"
    optional :name, :string, 7
  end
  add_enum "google.container.v1.SetMasterAuthRequest.Action" do
    value :UNKNOWN, 0
    value :SET_PASSWORD, 1
    value :GENERATE_PASSWORD, 2
    value :SET_USERNAME, 3
  end
  add_message "google.container.v1.DeleteClusterRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :name, :string, 4
  end
  add_message "google.container.v1.ListClustersRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :parent, :string, 4
  end
  add_message "google.container.v1.ListClustersResponse" do
    repeated :clusters, :message, 1, "google.container.v1.Cluster"
    repeated :missing_zones, :string, 2
  end
  add_message "google.container.v1.GetOperationRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :operation_id, :string, 3
    optional :name, :string, 5
  end
  add_message "google.container.v1.ListOperationsRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :parent, :string, 4
  end
  add_message "google.container.v1.CancelOperationRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :operation_id, :string, 3
    optional :name, :string, 4
  end
  add_message "google.container.v1.ListOperationsResponse" do
    repeated :operations, :message, 1, "google.container.v1.Operation"
    repeated :missing_zones, :string, 2
  end
  add_message "google.container.v1.GetServerConfigRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :name, :string, 4
  end
  add_message "google.container.v1.ServerConfig" do
    optional :default_cluster_version, :string, 1
    repeated :valid_node_versions, :string, 3
    optional :default_image_type, :string, 4
    repeated :valid_image_types, :string, 5
    repeated :valid_master_versions, :string, 6
  end
  add_message "google.container.v1.CreateNodePoolRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool, :message, 4, "google.container.v1.NodePool"
    optional :parent, :string, 6
  end
  add_message "google.container.v1.DeleteNodePoolRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool_id, :string, 4
    optional :name, :string, 6
  end
  add_message "google.container.v1.ListNodePoolsRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :parent, :string, 5
  end
  add_message "google.container.v1.GetNodePoolRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool_id, :string, 4
    optional :name, :string, 6
  end
  add_message "google.container.v1.NodePool" do
    optional :name, :string, 1
    optional :config, :message, 2, "google.container.v1.NodeConfig"
    optional :initial_node_count, :int32, 3
    optional :self_link, :string, 100
    optional :version, :string, 101
    repeated :instance_group_urls, :string, 102
    optional :status, :enum, 103, "google.container.v1.NodePool.Status"
    optional :status_message, :string, 104
    optional :autoscaling, :message, 4, "google.container.v1.NodePoolAutoscaling"
    optional :management, :message, 5, "google.container.v1.NodeManagement"
    optional :max_pods_constraint, :message, 6, "google.container.v1.MaxPodsConstraint"
    repeated :conditions, :message, 105, "google.container.v1.StatusCondition"
    optional :pod_ipv4_cidr_size, :int32, 7
  end
  add_enum "google.container.v1.NodePool.Status" do
    value :STATUS_UNSPECIFIED, 0
    value :PROVISIONING, 1
    value :RUNNING, 2
    value :RUNNING_WITH_ERROR, 3
    value :RECONCILING, 4
    value :STOPPING, 5
    value :ERROR, 6
  end
  add_message "google.container.v1.NodeManagement" do
    optional :auto_upgrade, :bool, 1
    optional :auto_repair, :bool, 2
    optional :upgrade_options, :message, 10, "google.container.v1.AutoUpgradeOptions"
  end
  add_message "google.container.v1.AutoUpgradeOptions" do
    optional :auto_upgrade_start_time, :string, 1
    optional :description, :string, 2
  end
  add_message "google.container.v1.MaintenancePolicy" do
    optional :window, :message, 1, "google.container.v1.MaintenanceWindow"
    optional :resource_version, :string, 3
  end
  add_message "google.container.v1.MaintenanceWindow" do
    map :maintenance_exclusions, :string, :message, 4, "google.container.v1.TimeWindow"
    oneof :policy do
      optional :daily_maintenance_window, :message, 2, "google.container.v1.DailyMaintenanceWindow"
      optional :recurring_window, :message, 3, "google.container.v1.RecurringTimeWindow"
    end
  end
  add_message "google.container.v1.TimeWindow" do
    optional :start_time, :message, 1, "google.protobuf.Timestamp"
    optional :end_time, :message, 2, "google.protobuf.Timestamp"
  end
  add_message "google.container.v1.RecurringTimeWindow" do
    optional :window, :message, 1, "google.container.v1.TimeWindow"
    optional :recurrence, :string, 2
  end
  add_message "google.container.v1.DailyMaintenanceWindow" do
    optional :start_time, :string, 2
    optional :duration, :string, 3
  end
  add_message "google.container.v1.SetNodePoolManagementRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool_id, :string, 4
    optional :management, :message, 5, "google.container.v1.NodeManagement"
    optional :name, :string, 7
  end
  add_message "google.container.v1.SetNodePoolSizeRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool_id, :string, 4
    optional :node_count, :int32, 5
    optional :name, :string, 7
  end
  add_message "google.container.v1.RollbackNodePoolUpgradeRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :node_pool_id, :string, 4
    optional :name, :string, 6
  end
  add_message "google.container.v1.ListNodePoolsResponse" do
    repeated :node_pools, :message, 1, "google.container.v1.NodePool"
  end
  add_message "google.container.v1.ClusterAutoscaling" do
    optional :enable_node_autoprovisioning, :bool, 1
    repeated :resource_limits, :message, 2, "google.container.v1.ResourceLimit"
    optional :autoprovisioning_node_pool_defaults, :message, 4, "google.container.v1.AutoprovisioningNodePoolDefaults"
    repeated :autoprovisioning_locations, :string, 5
  end
  add_message "google.container.v1.AutoprovisioningNodePoolDefaults" do
    repeated :oauth_scopes, :string, 1
    optional :service_account, :string, 2
  end
  add_message "google.container.v1.ResourceLimit" do
    optional :resource_type, :string, 1
    optional :minimum, :int64, 2
    optional :maximum, :int64, 3
  end
  add_message "google.container.v1.NodePoolAutoscaling" do
    optional :enabled, :bool, 1
    optional :min_node_count, :int32, 2
    optional :max_node_count, :int32, 3
    optional :autoprovisioned, :bool, 4
  end
  add_message "google.container.v1.SetLabelsRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    map :resource_labels, :string, :string, 4
    optional :label_fingerprint, :string, 5
    optional :name, :string, 7
  end
  add_message "google.container.v1.SetLegacyAbacRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :enabled, :bool, 4
    optional :name, :string, 6
  end
  add_message "google.container.v1.StartIPRotationRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :name, :string, 6
    optional :rotate_credentials, :bool, 7
  end
  add_message "google.container.v1.CompleteIPRotationRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :name, :string, 7
  end
  add_message "google.container.v1.AcceleratorConfig" do
    optional :accelerator_count, :int64, 1
    optional :accelerator_type, :string, 2
  end
  add_message "google.container.v1.SetNetworkPolicyRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :network_policy, :message, 4, "google.container.v1.NetworkPolicy"
    optional :name, :string, 6
  end
  add_message "google.container.v1.SetMaintenancePolicyRequest" do
    optional :project_id, :string, 1
    optional :zone, :string, 2
    optional :cluster_id, :string, 3
    optional :maintenance_policy, :message, 4, "google.container.v1.MaintenancePolicy"
    optional :name, :string, 5
  end
  add_message "google.container.v1.StatusCondition" do
    optional :code, :enum, 1, "google.container.v1.StatusCondition.Code"
    optional :message, :string, 2
  end
  add_enum "google.container.v1.StatusCondition.Code" do
    value :UNKNOWN, 0
    value :GCE_STOCKOUT, 1
    value :GKE_SERVICE_ACCOUNT_DELETED, 2
    value :GCE_QUOTA_EXCEEDED, 3
    value :SET_BY_OPERATOR, 4
    value :CLOUD_KMS_KEY_ERROR, 7
  end
  add_message "google.container.v1.NetworkConfig" do
    optional :network, :string, 1
    optional :subnetwork, :string, 2
    optional :enable_intra_node_visibility, :bool, 5
  end
  add_message "google.container.v1.IntraNodeVisibilityConfig" do
    optional :enabled, :bool, 1
  end
  add_message "google.container.v1.MaxPodsConstraint" do
    optional :max_pods_per_node, :int64, 1
  end
  add_message "google.container.v1.DatabaseEncryption" do
    optional :state, :enum, 2, "google.container.v1.DatabaseEncryption.State"
    optional :key_name, :string, 1
  end
  add_enum "google.container.v1.DatabaseEncryption.State" do
    value :UNKNOWN, 0
    value :ENCRYPTED, 1
    value :DECRYPTED, 2
  end
  add_message "google.container.v1.ListUsableSubnetworksRequest" do
    optional :parent, :string, 1
    optional :filter, :string, 2
    optional :page_size, :int32, 3
    optional :page_token, :string, 4
  end
  add_message "google.container.v1.ListUsableSubnetworksResponse" do
    repeated :subnetworks, :message, 1, "google.container.v1.UsableSubnetwork"
    optional :next_page_token, :string, 2
  end
  add_message "google.container.v1.UsableSubnetworkSecondaryRange" do
    optional :range_name, :string, 1
    optional :ip_cidr_range, :string, 2
    optional :status, :enum, 3, "google.container.v1.UsableSubnetworkSecondaryRange.Status"
  end
  add_enum "google.container.v1.UsableSubnetworkSecondaryRange.Status" do
    value :UNKNOWN, 0
    value :UNUSED, 1
    value :IN_USE_SERVICE, 2
    value :IN_USE_SHAREABLE_POD, 3
    value :IN_USE_MANAGED_POD, 4
  end
  add_message "google.container.v1.UsableSubnetwork" do
    optional :subnetwork, :string, 1
    optional :network, :string, 2
    optional :ip_cidr_range, :string, 3
    repeated :secondary_ip_ranges, :message, 4, "google.container.v1.UsableSubnetworkSecondaryRange"
    optional :status_message, :string, 5
  end
  add_message "google.container.v1.ResourceUsageExportConfig" do
    optional :bigquery_destination, :message, 1, "google.container.v1.ResourceUsageExportConfig.BigQueryDestination"
    optional :enable_network_egress_metering, :bool, 2
    optional :consumption_metering_config, :message, 3, "google.container.v1.ResourceUsageExportConfig.ConsumptionMeteringConfig"
  end
  add_message "google.container.v1.ResourceUsageExportConfig.BigQueryDestination" do
    optional :dataset_id, :string, 1
  end
  add_message "google.container.v1.ResourceUsageExportConfig.ConsumptionMeteringConfig" do
    optional :enabled, :bool, 1
  end
  add_message "google.container.v1.VerticalPodAutoscaling" do
    optional :enabled, :bool, 1
  end
end

module Google
  module Container
    module V1
      NodeConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NodeConfig").msgclass
      ShieldedInstanceConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ShieldedInstanceConfig").msgclass
      NodeTaint = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NodeTaint").msgclass
      NodeTaint::Effect = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NodeTaint.Effect").enummodule
      MasterAuth = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.MasterAuth").msgclass
      ClientCertificateConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ClientCertificateConfig").msgclass
      AddonsConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.AddonsConfig").msgclass
      HttpLoadBalancing = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.HttpLoadBalancing").msgclass
      HorizontalPodAutoscaling = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.HorizontalPodAutoscaling").msgclass
      KubernetesDashboard = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.KubernetesDashboard").msgclass
      NetworkPolicyConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NetworkPolicyConfig").msgclass
      PrivateClusterConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.PrivateClusterConfig").msgclass
      AuthenticatorGroupsConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.AuthenticatorGroupsConfig").msgclass
      CloudRunConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.CloudRunConfig").msgclass
      MasterAuthorizedNetworksConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.MasterAuthorizedNetworksConfig").msgclass
      MasterAuthorizedNetworksConfig::CidrBlock = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.MasterAuthorizedNetworksConfig.CidrBlock").msgclass
      LegacyAbac = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.LegacyAbac").msgclass
      NetworkPolicy = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NetworkPolicy").msgclass
      NetworkPolicy::Provider = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NetworkPolicy.Provider").enummodule
      BinaryAuthorization = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.BinaryAuthorization").msgclass
      IPAllocationPolicy = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.IPAllocationPolicy").msgclass
      Cluster = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.Cluster").msgclass
      Cluster::Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.Cluster.Status").enummodule
      ClusterUpdate = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ClusterUpdate").msgclass
      Operation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.Operation").msgclass
      Operation::Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.Operation.Status").enummodule
      Operation::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.Operation.Type").enummodule
      CreateClusterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.CreateClusterRequest").msgclass
      GetClusterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.GetClusterRequest").msgclass
      UpdateClusterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.UpdateClusterRequest").msgclass
      UpdateNodePoolRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.UpdateNodePoolRequest").msgclass
      SetNodePoolAutoscalingRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetNodePoolAutoscalingRequest").msgclass
      SetLoggingServiceRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetLoggingServiceRequest").msgclass
      SetMonitoringServiceRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetMonitoringServiceRequest").msgclass
      SetAddonsConfigRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetAddonsConfigRequest").msgclass
      SetLocationsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetLocationsRequest").msgclass
      UpdateMasterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.UpdateMasterRequest").msgclass
      SetMasterAuthRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetMasterAuthRequest").msgclass
      SetMasterAuthRequest::Action = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetMasterAuthRequest.Action").enummodule
      DeleteClusterRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.DeleteClusterRequest").msgclass
      ListClustersRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListClustersRequest").msgclass
      ListClustersResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListClustersResponse").msgclass
      GetOperationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.GetOperationRequest").msgclass
      ListOperationsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListOperationsRequest").msgclass
      CancelOperationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.CancelOperationRequest").msgclass
      ListOperationsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListOperationsResponse").msgclass
      GetServerConfigRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.GetServerConfigRequest").msgclass
      ServerConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ServerConfig").msgclass
      CreateNodePoolRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.CreateNodePoolRequest").msgclass
      DeleteNodePoolRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.DeleteNodePoolRequest").msgclass
      ListNodePoolsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListNodePoolsRequest").msgclass
      GetNodePoolRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.GetNodePoolRequest").msgclass
      NodePool = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NodePool").msgclass
      NodePool::Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NodePool.Status").enummodule
      NodeManagement = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NodeManagement").msgclass
      AutoUpgradeOptions = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.AutoUpgradeOptions").msgclass
      MaintenancePolicy = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.MaintenancePolicy").msgclass
      MaintenanceWindow = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.MaintenanceWindow").msgclass
      TimeWindow = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.TimeWindow").msgclass
      RecurringTimeWindow = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.RecurringTimeWindow").msgclass
      DailyMaintenanceWindow = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.DailyMaintenanceWindow").msgclass
      SetNodePoolManagementRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetNodePoolManagementRequest").msgclass
      SetNodePoolSizeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetNodePoolSizeRequest").msgclass
      RollbackNodePoolUpgradeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.RollbackNodePoolUpgradeRequest").msgclass
      ListNodePoolsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListNodePoolsResponse").msgclass
      ClusterAutoscaling = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ClusterAutoscaling").msgclass
      AutoprovisioningNodePoolDefaults = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.AutoprovisioningNodePoolDefaults").msgclass
      ResourceLimit = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ResourceLimit").msgclass
      NodePoolAutoscaling = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NodePoolAutoscaling").msgclass
      SetLabelsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetLabelsRequest").msgclass
      SetLegacyAbacRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetLegacyAbacRequest").msgclass
      StartIPRotationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.StartIPRotationRequest").msgclass
      CompleteIPRotationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.CompleteIPRotationRequest").msgclass
      AcceleratorConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.AcceleratorConfig").msgclass
      SetNetworkPolicyRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetNetworkPolicyRequest").msgclass
      SetMaintenancePolicyRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.SetMaintenancePolicyRequest").msgclass
      StatusCondition = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.StatusCondition").msgclass
      StatusCondition::Code = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.StatusCondition.Code").enummodule
      NetworkConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.NetworkConfig").msgclass
      IntraNodeVisibilityConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.IntraNodeVisibilityConfig").msgclass
      MaxPodsConstraint = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.MaxPodsConstraint").msgclass
      DatabaseEncryption = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.DatabaseEncryption").msgclass
      DatabaseEncryption::State = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.DatabaseEncryption.State").enummodule
      ListUsableSubnetworksRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListUsableSubnetworksRequest").msgclass
      ListUsableSubnetworksResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ListUsableSubnetworksResponse").msgclass
      UsableSubnetworkSecondaryRange = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.UsableSubnetworkSecondaryRange").msgclass
      UsableSubnetworkSecondaryRange::Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.UsableSubnetworkSecondaryRange.Status").enummodule
      UsableSubnetwork = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.UsableSubnetwork").msgclass
      ResourceUsageExportConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ResourceUsageExportConfig").msgclass
      ResourceUsageExportConfig::BigQueryDestination = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ResourceUsageExportConfig.BigQueryDestination").msgclass
      ResourceUsageExportConfig::ConsumptionMeteringConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.ResourceUsageExportConfig.ConsumptionMeteringConfig").msgclass
      VerticalPodAutoscaling = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.container.v1.VerticalPodAutoscaling").msgclass
    end
  end
end
