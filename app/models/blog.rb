class Blog < ApplicationRecord
    belongs_to :organisation
    belongs_to :admin

    has_one_attached :avatar, dependent: :destroy
end
