class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-fiction) }
    validate :title_contains_clickbait



    def title_contains_clickbait
        if self.title?
            unless self.title.match /Won't Believe|Secret|Guess|Top \d/
                errors.add(:title, "must be clickbait")
            end
        end
    end
end
