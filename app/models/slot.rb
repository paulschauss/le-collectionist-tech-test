# frozen_string_literal: true

class Slot < ApplicationRecord
  AUTORIZED_DAYS = Date::DAYNAMES

  belongs_to :shop

  validates :shop, presence: true
  validates :day, :start_time, :end_time, presence: true
  validates :day, inclusion: { in: AUTORIZED_DAYS }

  validate :start_hour_is_before_end_hour
  validate :slot_is_not_overlapping_with_other_slots

  def self.days
    today_index = AUTORIZED_DAYS.find_index(Time.now.strftime('%A'))
    AUTORIZED_DAYS.rotate(today_index)
  end

  private

  def slot_is_not_overlapping_with_other_slots
    return if shop.nil?
    return if shop.slots.empty?

    shop.slots.each do |slot|
      next if slot.day != day

      (start_time..end_time).overlaps?(slot.start_time..slot.end_time)
      errors.add(:start_time, :slot_overlapping)
    end
  end

  def start_hour_is_before_end_hour
    errors.add(:start_time, :start_before_end) if start_time >= end_time
  end
end
