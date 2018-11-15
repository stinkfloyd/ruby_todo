class Task < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title
  validate :future_completed_date
  validates_presence_of :user

  private

  def future_completed_date
    if !completed.blank? && completed > Date.today
      self.errors.add(:completed, "Cannot pick a future date.")
    end
  end
end
