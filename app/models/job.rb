class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}
  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  scope :published, -> { where(is_hidden: false)}
  scope :recent, -> { order('created_at DESC')}

  has_many :resumes

  def view!
    if self.viewed_count.nil?
      self.viewed_count = 1
      self.save
    else
      self.viewed_count += 1
      self.save
    end
  end
end
