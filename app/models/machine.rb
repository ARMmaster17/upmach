class Machine < ApplicationRecord
    has_many :parts, dependent: :destroy
    has_many :downtimes, dependent: :destroy
end
