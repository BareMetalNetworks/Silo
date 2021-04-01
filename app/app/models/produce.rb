class Produce < ApplicationRecord
	scope :available, -> { where(available: true) }
end
