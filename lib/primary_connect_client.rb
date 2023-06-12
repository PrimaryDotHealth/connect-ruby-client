=begin
#Primary Connect API V1

#Client Library to interface with Primary Connect

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

# Common files
require 'primary_connect_client/api_client'
require 'primary_connect_client/api_error'
require 'primary_connect_client/version'
require 'primary_connect_client/configuration'

# Models
require 'primary_connect_client/models/accession'
require 'primary_connect_client/models/accession_order'
require 'primary_connect_client/models/address'
require 'primary_connect_client/models/coded_value'
require 'primary_connect_client/models/demographics'
require 'primary_connect_client/models/device'
require 'primary_connect_client/models/dosage'
require 'primary_connect_client/models/error'
require 'primary_connect_client/models/event'
require 'primary_connect_client/models/events'
require 'primary_connect_client/models/identifier'
require 'primary_connect_client/models/ids'
require 'primary_connect_client/models/location'
require 'primary_connect_client/models/measurement'
require 'primary_connect_client/models/medication'
require 'primary_connect_client/models/medication_administration'
require 'primary_connect_client/models/meta'
require 'primary_connect_client/models/meta_destination'
require 'primary_connect_client/models/meta_destinations'
require 'primary_connect_client/models/meta_message'
require 'primary_connect_client/models/meta_provenances'
require 'primary_connect_client/models/meta_source'
require 'primary_connect_client/models/meta_transmission'
require 'primary_connect_client/models/name'
require 'primary_connect_client/models/order'
require 'primary_connect_client/models/order_ids'
require 'primary_connect_client/models/order_order'
require 'primary_connect_client/models/order_order_clinical_info'
require 'primary_connect_client/models/order_order_diagnoses'
require 'primary_connect_client/models/order_order_ordering_facility'
require 'primary_connect_client/models/order_patient'
require 'primary_connect_client/models/order_patient_contacts'
require 'primary_connect_client/models/order_with_event_errors'
require 'primary_connect_client/models/orders'
require 'primary_connect_client/models/orders_orders'
require 'primary_connect_client/models/patient'
require 'primary_connect_client/models/phone_number'
require 'primary_connect_client/models/provider'
require 'primary_connect_client/models/result'
require 'primary_connect_client/models/result_ids'
require 'primary_connect_client/models/result_reference_range'
require 'primary_connect_client/models/result_report'
require 'primary_connect_client/models/results'
require 'primary_connect_client/models/specimen'
require 'primary_connect_client/models/subject'
require 'primary_connect_client/models/v2_device'
require 'primary_connect_client/models/v2_dosage'
require 'primary_connect_client/models/v2_medication'
require 'primary_connect_client/models/v2_medication_administration'
require 'primary_connect_client/models/visit'
require 'primary_connect_client/models/visit_company'
require 'primary_connect_client/models/visit_guarantor'
require 'primary_connect_client/models/visit_guarantor_employer'
require 'primary_connect_client/models/visit_insurances'
require 'primary_connect_client/models/visit_insured'
require 'primary_connect_client/models/visit_plan'

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
