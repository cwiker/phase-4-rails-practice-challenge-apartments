class Tenant < ApplicationRecord

    validates :name, presence: true
    validates :age, comparison: { greater_than: 18 }

    has_many :apartments
    has_many :leases

end
