class User < ActiveRecord::Base
    validates :name, :age, :sex, :presence => true
    validates :age, :numericality => true
    after_save :erase
    def erase
	self.name = nil
	self.age = nil
	self.sex = nil
    end
end
