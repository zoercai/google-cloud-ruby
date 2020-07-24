# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/v1/query.proto


require 'google/protobuf'

require 'google/firestore/v1/document_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/firestore/v1/query.proto", :syntax => :proto3) do
    add_message "google.firestore.v1.StructuredQuery" do
      optional :select, :message, 1, "google.firestore.v1.StructuredQuery.Projection"
      repeated :from, :message, 2, "google.firestore.v1.StructuredQuery.CollectionSelector"
      optional :where, :message, 3, "google.firestore.v1.StructuredQuery.Filter"
      repeated :order_by, :message, 4, "google.firestore.v1.StructuredQuery.Order"
      optional :start_at, :message, 7, "google.firestore.v1.Cursor"
      optional :end_at, :message, 8, "google.firestore.v1.Cursor"
      optional :offset, :int32, 6
      optional :limit, :message, 5, "google.protobuf.Int32Value"
    end
    add_message "google.firestore.v1.StructuredQuery.CollectionSelector" do
      optional :collection_id, :string, 2
      optional :all_descendants, :bool, 3
    end
    add_message "google.firestore.v1.StructuredQuery.Filter" do
      oneof :filter_type do
        optional :composite_filter, :message, 1, "google.firestore.v1.StructuredQuery.CompositeFilter"
        optional :field_filter, :message, 2, "google.firestore.v1.StructuredQuery.FieldFilter"
        optional :unary_filter, :message, 3, "google.firestore.v1.StructuredQuery.UnaryFilter"
      end
    end
    add_message "google.firestore.v1.StructuredQuery.CompositeFilter" do
      optional :op, :enum, 1, "google.firestore.v1.StructuredQuery.CompositeFilter.Operator"
      repeated :filters, :message, 2, "google.firestore.v1.StructuredQuery.Filter"
    end
    add_enum "google.firestore.v1.StructuredQuery.CompositeFilter.Operator" do
      value :OPERATOR_UNSPECIFIED, 0
      value :AND, 1
    end
    add_message "google.firestore.v1.StructuredQuery.FieldFilter" do
      optional :field, :message, 1, "google.firestore.v1.StructuredQuery.FieldReference"
      optional :op, :enum, 2, "google.firestore.v1.StructuredQuery.FieldFilter.Operator"
      optional :value, :message, 3, "google.firestore.v1.Value"
    end
    add_enum "google.firestore.v1.StructuredQuery.FieldFilter.Operator" do
      value :OPERATOR_UNSPECIFIED, 0
      value :LESS_THAN, 1
      value :LESS_THAN_OR_EQUAL, 2
      value :GREATER_THAN, 3
      value :GREATER_THAN_OR_EQUAL, 4
      value :EQUAL, 5
      value :ARRAY_CONTAINS, 7
      value :IN, 8
      value :ARRAY_CONTAINS_ANY, 9
    end
    add_message "google.firestore.v1.StructuredQuery.UnaryFilter" do
      optional :op, :enum, 1, "google.firestore.v1.StructuredQuery.UnaryFilter.Operator"
      oneof :operand_type do
        optional :field, :message, 2, "google.firestore.v1.StructuredQuery.FieldReference"
      end
    end
    add_enum "google.firestore.v1.StructuredQuery.UnaryFilter.Operator" do
      value :OPERATOR_UNSPECIFIED, 0
      value :IS_NAN, 2
      value :IS_NULL, 3
    end
    add_message "google.firestore.v1.StructuredQuery.FieldReference" do
      optional :field_path, :string, 2
    end
    add_message "google.firestore.v1.StructuredQuery.Projection" do
      repeated :fields, :message, 2, "google.firestore.v1.StructuredQuery.FieldReference"
    end
    add_message "google.firestore.v1.StructuredQuery.Order" do
      optional :field, :message, 1, "google.firestore.v1.StructuredQuery.FieldReference"
      optional :direction, :enum, 2, "google.firestore.v1.StructuredQuery.Direction"
    end
    add_enum "google.firestore.v1.StructuredQuery.Direction" do
      value :DIRECTION_UNSPECIFIED, 0
      value :ASCENDING, 1
      value :DESCENDING, 2
    end
    add_message "google.firestore.v1.Cursor" do
      repeated :values, :message, 1, "google.firestore.v1.Value"
      optional :before, :bool, 2
    end
  end
end

module Google
  module Cloud
    module Firestore
      module V1
        StructuredQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery").msgclass
        StructuredQuery::CollectionSelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.CollectionSelector").msgclass
        StructuredQuery::Filter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.Filter").msgclass
        StructuredQuery::CompositeFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.CompositeFilter").msgclass
        StructuredQuery::CompositeFilter::Operator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.CompositeFilter.Operator").enummodule
        StructuredQuery::FieldFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.FieldFilter").msgclass
        StructuredQuery::FieldFilter::Operator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.FieldFilter.Operator").enummodule
        StructuredQuery::UnaryFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.UnaryFilter").msgclass
        StructuredQuery::UnaryFilter::Operator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.UnaryFilter.Operator").enummodule
        StructuredQuery::FieldReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.FieldReference").msgclass
        StructuredQuery::Projection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.Projection").msgclass
        StructuredQuery::Order = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.Order").msgclass
        StructuredQuery::Direction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.StructuredQuery.Direction").enummodule
        Cursor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1.Cursor").msgclass
      end
    end
  end
end
