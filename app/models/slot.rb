class Slot < ApplicationRecord
  AUTORIZED_DAYS = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday].freeze
  AUTORIZED_HOURS = (0..23).freeze
  AUTORIZED_MINUTES = [0,15,30,45].freeze

  belongs_to :shop

  validates :day, inclusion: { in: AUTORIZED_DAYS }
  validates :start_hour, :end_hour, inclusion: { in: AUTORIZED_HOURS }
  validates :start_minute, :end_minute, inclusion: { in: AUTORIZED_MINUTES }
  validates :shop, presence: true

  validate :start_hour_is_before_end_hour
  # validate :slot_is_not_overlapping_with_other_slots

  def self.days
    today_index = AUTORIZED_DAYS.find_index(Time.now.strftime("%A"))
    days = AUTORIZED_DAYS.rotate(today_index)
  end

  private

  def start_hour_is_before_end_hour
    return if start_hour < end_hour
    return if start_hour == end_hour && start_minute < end_minute
    errors.add(:start_hour, 'must be before end hour')
  end
end
