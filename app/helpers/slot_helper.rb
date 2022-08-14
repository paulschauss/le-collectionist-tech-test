# frozen_string_literal: true

# Slot Helper Methods for the Shop App
module SlotHelper
  def display_slot(slot)
    "#{slot.start_time.to_fs(:time)}-#{slot.end_time.to_fs(:time)}"
  end
end
