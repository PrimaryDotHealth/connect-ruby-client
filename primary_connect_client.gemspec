# frozen_string_literal: true

# -*- encoding: utf-8 -*-

=begin
#Primary Connect API V1

#Client Library to interface with Primary Connect

=end

$:.push File.expand_path("../lib", __FILE__)
require "primary_connect_client/version"

Gem::Specification.new do |s|
  s.name        = "primary_connect_client"
  s.version     = PrimaryConnectClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Primary Connect API V1 Ruby Gem"
  s.description = "Client Library to interface with Primary Connect"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'primary_connect_proto', '~> 0.5.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib", "lib/protobuf/build"]
end
