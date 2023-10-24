=begin
#Primary Connect API V1

#Client Library to interface with Primary Connect

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for PrimaryConnectClient::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = PrimaryConnectClient::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(PrimaryConnectClient::DefaultApi)
    end
  end

  # unit tests for accession_order
  # accession order by ULID
  # @param id Order ID
  # @param [Hash] opts the optional parameters
  # @option opts [Accession] :accession 
  # @return [nil]
  describe 'accession_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accession_order_by_specimen_id
  # accession order by Specimen ID
  # @param specimen_id Specimen ID
  # @param [Hash] opts the optional parameters
  # @option opts [Accession] :accession 
  # @return [nil]
  describe 'accession_order_by_specimen_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_order
  # cancel order
  # @param id Order ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_measurement
  # create Measurement
  # @param [Hash] opts the optional parameters
  # @return [Ids]
  describe 'create_measurement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_order
  # create order
  # @param [Hash] opts the optional parameters
  # @option opts [Order] :order 
  # @return [OrderIds]
  describe 'create_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_result
  # create result
  # @param order_id Order id
  # @param [Hash] opts the optional parameters
  # @option opts [Results] :results 
  # @return [ResultIds]
  describe 'create_result test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lab_report
  # show lab report
  # @param result_id Result id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_lab_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_measurement
  # show measurement
  # @param id Measurement ID
  # @param [Hash] opts the optional parameters
  # @return [Measurement]
  describe 'get_measurement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_order
  # show order
  # @param id Order ID
  # @param [Hash] opts the optional parameters
  # @return [OrderWithEventErrors]
  describe 'get_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_events
  # list events
  # @param [Hash] opts the optional parameters
  # @option opts [String] :last_event_id Paginate events with event id. 26 character, sortable id.
  # @option opts [String] :event_types Filter event_types, comma delimited. [OrderComplete, OrderCreated, OrderError, OrderResulted, OrderUpdated, ResultError, SpecimenReceived]
  # @return [Events]
  describe 'list_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_orders
  # list orders
  # @param [Hash] opts the optional parameters
  # @option opts [String] :last_order_id Paginate orders with order id. 26 character, sortable id.
  # @option opts [String] :state Filter orders by state, comma delimited.[new, updated, delivered, processing, resulted, errored, canceled, unprocessable]
  # @option opts [String] :specimen_id Find an order by specimen/accession id. If found, will redirect to show order endpoint.
  # @return [Orders]
  describe 'list_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_results
  # list results
  # @param order_id Order id
  # @param [Hash] opts the optional parameters
  # @return [Results]
  describe 'list_results test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reroute_order
  # reroute Order identified in the payload
  # @param [Hash] opts the optional parameters
  # @option opts [Order] :order 
  # @return [nil]
  describe 'reroute_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reroute_order_by_ulid
  # Reroute order by ULID
  # @param id Order ID
  # @param [Hash] opts the optional parameters
  # @option opts [Order] :order 
  # @return [nil]
  describe 'reroute_order_by_ulid test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_order
  # update order
  # @param id Order ID
  # @param [Hash] opts the optional parameters
  # @option opts [Order] :order 
  # @return [OrderIds]
  describe 'update_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
