module RestaurantHelper

  def get_page_count(count)
    page_count = count/10
    if count % 10 != 0
      page_count += 1
    end
    page_count
  end

end
