class Author < ActiveRecord::Base
    validates :name, presence: true #does this automatically validate with the inclusion over other validations?
    validates :name, uniqueness: true
    validates :phone_number, length: { is: 10 }

end
