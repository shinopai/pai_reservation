module ApplicationHelper
  BASE_TITLE = "ヘッドスパスクール予約管理システム".freeze
  def fill_page_title(page_title)
    if page_title.blank?
      BASE_TITLE
    else
      "#{page_title} | #{BASE_TITLE}"
    end
  end
end
