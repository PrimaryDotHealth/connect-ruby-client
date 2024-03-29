=begin
#Primary Connect API V1

#Client Library to interface with Primary Connect

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PrimaryConnectClient::VisitInsured
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PrimaryConnectClient::VisitInsured do
  let(:instance) { PrimaryConnectClient::VisitInsured.new }

  describe 'test an instance of VisitInsured' do
    it 'should create an instance of VisitInsured' do
      expect(instance).to be_instance_of(PrimaryConnectClient::VisitInsured)
    end
  end
  describe 'test attribute "identifiers"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ssn"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "relationship"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["RELATIONSHIP_UNKNOWN", "RELATIONSHIP_OTHER", "RELATIONSHIP_SELF", "RELATIONSHIP_SPOUSE", "RELATIONSHIP_LIFE_PARTNER", "RELATIONSHIP_CHILD", "RELATIONSHIP_FATHER", "RELATIONSHIP_MOTHER", "RELATIONSHIP_GUARDIAN", "RELATIONSHIP_PARENT", "RELATIONSHIP_GRANDPARENT", "RELATIONSHIP_GRANDCHILD", "RELATIONSHIP_SIBLING", "RELATIONSHIP_EMPLOYER"])
      # validator.allowable_values.each do |value|
      #   expect { instance.relationship = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "dob"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sex"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SEX_UNKNOWN", "SEX_FEMALE", "SEX_MALE", "SEX_OTHER", "SEX_NON_BINARY", "SEX_PREFER_NOT_TO_DISCLOSE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.sex = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
