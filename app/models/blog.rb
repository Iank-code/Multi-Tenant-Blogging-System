class Blog < ApplicationRecord
    belongs_to :organisation
    belongs_to :admin
    belongs_to :account

    has_one_attached :avatar, dependent: :destroy
end
