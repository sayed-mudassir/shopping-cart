class Buynow < ApplicationRecord
	has_many :payments, inverse_of: :buynow, dependent: :delete_all
  	accepts_nested_attributes_for :payments, reject_if: :all_blank, allow_destroy: true

end
