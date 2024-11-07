#!/usr/bin/env ruby

require "deprecation_test"

my_object = DeprecationTest::MyClass.new
my_object.method_c { my_object.my_private_object }
