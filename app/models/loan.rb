class Loan < ActiveRecord::Base
  belongs_to :user

  # validates :title, presence: true
  # validates :body, presence: true


  # def self.search(search)
  #   if search
  #     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  #   end
  # end

end
