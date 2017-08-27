class Machine < ApplicationRecord
    has_many :parts
    has_many :downtimes
end
