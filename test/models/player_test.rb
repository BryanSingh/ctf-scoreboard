require 'test_helper'

class PlayerTest < ActiveSupport::TestCase

	def setup
		@user = User.new(email: "lukeskywalker@gmail.com",
			password: "maytheforcebewithyou", password_confirmation: "maytheforcebewithyou")

		@harry = User.new(email: 'user4@test.com',  
			password: 'TestPassword123',
			eligible: false,
			city: 'Tarpon Springs')
	end

		test "check users city" do
			assert_equal(true, @harry.city.present?)
		end
end