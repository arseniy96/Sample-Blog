require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test "contact attributes must not be empty" do
    contact = Contact.new
    assert contact.invalid?
    assert contact.errors[:email].any?
    assert contact.errors[:email].any?
  end

end
