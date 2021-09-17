# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: results.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'address_pb'
require 'identifier_pb'
require 'meta_pb'
require 'provider_pb'
require 'specimen_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("results.proto", :syntax => :proto3) do
    add_message "primary.connect.Results" do
      optional :meta, :message, 1, "primary.connect.Meta"
      repeated :results, :message, 2, "primary.connect.Results.Result"
    end
    add_message "primary.connect.Results.Result" do
      optional :code, :message, 1, "primary.connect.Results.Result.CodedValue"
      repeated :related_group_id, :string, 2
      optional :specimen, :message, 3, "primary.connect.Specimen"
      optional :value, :string, 4
      optional :value_type, :enum, 5, "primary.connect.Results.Result.ValueType"
      optional :completion_date_time, :message, 6, "google.protobuf.Timestamp"
      optional :report, :message, 7, "primary.connect.Results.Result.Report"
      optional :units, :string, 8
      repeated :notes, :string, 9
      optional :abnormal_flag, :enum, 10, "primary.connect.Results.Result.AbnormalFlag"
      optional :status, :enum, 12, "primary.connect.Results.Result.Status"
      optional :primary_results_interpreter, :message, 13, "primary.connect.Provider"
      optional :producer, :message, 14, "primary.connect.Results.Result.Producer"
      optional :performer, :message, 15, "primary.connect.Provider"
      optional :reference_range, :message, 16, "primary.connect.Results.Result.Range"
      optional :observation_method, :message, 17, "primary.connect.Results.Result.CodedValue"
      optional :producer_order_id, :string, 18
      optional :finding_value, :message, 19, "primary.connect.Results.Result.CodedValue"
    end
    add_message "primary.connect.Results.Result.Producer" do
      optional :id, :message, 1, "primary.connect.Identifier"
      optional :name, :string, 2
      optional :address, :message, 3, "primary.connect.Address"
    end
    add_message "primary.connect.Results.Result.Range" do
      optional :low, :int32, 1
      optional :high, :int32, 2
      optional :text, :string, 3
    end
    add_message "primary.connect.Results.Result.CodedValue" do
      optional :value, :string, 1
      optional :code_set, :string, 2
      optional :description, :string, 3
    end
    add_message "primary.connect.Results.Result.Report" do
      optional :file_type, :string, 1
      optional :data, :string, 2
    end
    add_enum "primary.connect.Results.Result.ValueType" do
      value :ADDRESS, 0
      value :CODED_ENTRY, 1
      value :DATE, 2
      value :DATE_TIME, 3
      value :ENCAPSULATED_DATA, 4
      value :FORMATTED_TEXT, 5
      value :ID, 6
      value :ID_AND_NAME, 7
      value :MONEY, 8
      value :NAME, 9
      value :NUMERIC, 10
      value :PHONE_NUMBER, 11
      value :PRICE, 12
      value :REFERENCE_POINTER, 13
      value :STRING, 14
      value :TIME, 15
      value :STRUCTURED_NUMERIC, 16
    end
    add_enum "primary.connect.Results.Result.AbnormalFlag" do
      value :NORMAL, 0
      value :LOW, 1
      value :VERY_LOW, 2
      value :HIGH, 3
      value :VERY_HIGH, 4
      value :ABNORMAL, 5
      value :SUSCEPTIBLE, 6
      value :RESISTANT, 7
      value :INTERMEDIATE, 8
      value :MODERATELY_SUSCEPTIBLE, 9
      value :VERY_SUSCEPTIBLE, 10
      value :CRITICALLY_ABNORMAL, 11
      value :CRITICALLY_LOW, 12
      value :CRITICALLY_HIGH, 13
      value :NOT_SUSCEPTIBLE, 14
      value :INCONCLUSIVE, 15
      value :VERY_ABNORMAL, 16
    end
    add_enum "primary.connect.Results.Result.Status" do
      value :PRELIMINARY, 0
      value :INCOMPLETE, 1
      value :CORRECTED, 2
      value :FINAL, 3
      value :UNAVAILABLE, 4
      value :NONE_SPECIFIED, 5
      value :CANCELED, 6
      value :DELETED, 7
      value :REJECTED, 8
    end
  end
end

module Primary
  module Connect
    Results = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results").msgclass
    Results::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result").msgclass
    Results::Result::Producer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result.Producer").msgclass
    Results::Result::Range = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result.Range").msgclass
    Results::Result::CodedValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result.CodedValue").msgclass
    Results::Result::Report = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result.Report").msgclass
    Results::Result::ValueType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result.ValueType").enummodule
    Results::Result::AbnormalFlag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result.AbnormalFlag").enummodule
    Results::Result::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("primary.connect.Results.Result.Status").enummodule
  end
end
