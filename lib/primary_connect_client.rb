=begin
#Primary Connect API V1

#Client Library to interface with Primary Connect

The version of the OpenAPI document: v1

=end

# Common files
require 'primary_connect_client/api_client'
require 'primary_connect_client/api_error'
require 'primary_connect_client/version'
require 'primary_connect_client/configuration'

# Protobufs
require 'protobuf/protobuf'
require 'protobuf/extensions'

Primary::Connect::Name.include(Primary::Connect::Extensions::FullNameable)
[
  Primary::Connect::Provider,
  Primary::Connect::Demographics,
  Primary::Connect::Order::Order::Facility,
  Primary::Connect::Patient::Contact,
  Primary::Connect::Visit::Guarantor,
  Primary::Connect::Visit::Guarantor::Employer
].each do |protobuf|
  protobuf.include(Primary::Connect::Extensions::PhoneNumberable)
end

# APIs
require 'primary_connect_client/api/default_api'

module PrimaryConnectClient
  class << self
    # Customize default settings for the SDK using block.
    #   PrimaryConnectClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
