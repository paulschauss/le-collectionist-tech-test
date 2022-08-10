module SlotHelper
  def display_slot(slot)
    content_tag(:span, class: "slot") do
      "#{sprintf '%02d', slot.start_hour}:#{sprintf '%02d', slot.start_minute}-#{sprintf '%02d', slot.end_hour}h#{sprintf '%02d', slot.end_minute}"
    end
  end
end
