require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user =  User.new(name: "Examplsasae User", email: "ussasaser@easasaxample.com",
      password: "foobar", password_confirmation: "foobar")
  end

  test "email addresses should be saved as lower-case" do
    @user.save
    assert @user.valid?

  end
end
