# frozen_string_literal: true

# Slot Helper Methods for the Shop App
module SlotHelper
  def display_slot(slot)
    content_tag(:span, class: 'slot') do
      "#{format '%02d',
                slot.start_hour}:#{format '%02d',
                                          slot.start_minute}-#{format '%02d',
                                                                      slot.end_hour}h#{format '%02d', slot.end_minute}"
    end
  end
end
