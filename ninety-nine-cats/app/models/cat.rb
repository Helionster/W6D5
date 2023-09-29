require "action_view"

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    CAT_COLORS = ["white", "black", "gray", "orange","purple"]
    validate :birth_date_cannot_be_future
    validates :birth_date, presence: true
    validates :color, presence: true, inclusion: {in: CAT_COLORS}
    validates :name, presence: true
    validates :sex, presence: true, inclusion: {in: %w(M F)}

    def birth_date_cannot_be_future 
        if birth_date.present? && birth_date > Date.today
            errors.add(:birth_date, 'Cant be in the future')
        end
    end

    def age
        Date.today - birth_date
    end
end