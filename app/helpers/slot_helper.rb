module SlotHelper
  def display_slot(slot)
    content_tag(:span, class: "slot") do
      "#{slot.start_hour}h00 à #{slot.end_hour}h00"
    end
  end
end
