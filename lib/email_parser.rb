# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :email_addresses
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  def parse
    # Splits input based on condition that commas exist. if no commas exist then split the array by spaces
    # Once input is separated, flatten any nested arrays that may have been generated, and delete duplicates
    email_addresses.split(', ').map {|ea| ea.split}.flatten.uniq
  end
end

