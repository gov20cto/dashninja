module WidgetsHelper
  def max_bar_height(bars)
    max_height = 0
    bars.each do |bar|
      max_height = bar[:completed] if bar[:completed] > max_height
    end
    max_height
  end
end
