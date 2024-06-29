class Admin < ApplicationRecord
    belongs_to :organisation
    has_one_attached :avatar, dependent: :destroy
end
