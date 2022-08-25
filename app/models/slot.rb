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
      if slot.day == day && (date_to_now(start_time)..date_to_now(end_time)).overlaps?(date_to_now(slot.start_time)..date_to_now(slot.end_time))
        errors.add(:start_time, 'Slot is overlapping with another slot')
        break
      end
    end
  end

  def start_hour_is_before_end_hour
    return unless start_time && end_time

    errors.add(:start_time, :start_before_end) if start_time >= end_time
  end

  def date_to_now(time)
    time.strftime('%H:%M').to_time
  end
end
