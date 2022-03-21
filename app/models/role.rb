class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end
    
    def locations
        self.auditions.map do |audition|
            place.location
        end
    end

    def lead
        find = self.auditions.find{|audition| audition.hired == true}
        find ? find : "no actor has been hired for this role"
    end

    def understudy
        find = self.auditions.select{|audition| audition.hired == true}
        find.second ? find.second : "no actor has been hired for this role"
    end

end