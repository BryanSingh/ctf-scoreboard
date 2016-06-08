require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(email: "lukeskywalker@gmail.com",
			password: "maytheforcebewithyou", password_confirmation: "maytheforcebewithyou")

		@harry = User.new(email: 'user4@test.com',  
			password: 'TestPassword123',
			eligible: false)
	end

	test "not able to comepte for prizes" do
		assert_equal(false, @harry.eligible)
	end
end