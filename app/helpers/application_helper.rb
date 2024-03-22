module ApplicationHelper
  # ページタイトル設定
  BASE_TITLE = "ヘッドスパスクール予約管理システム".freeze
  def fill_page_title(page_title)
    if page_title.blank?
      BASE_TITLE
    else
      "#{page_title} | #{BASE_TITLE}"
    end
  end

  # ヘッダーのマイページへのリンクを講師と生徒で切り分ける
  def get_mypage_link(path)
    if path.include?('tutors')
      tutors_mypage_path
    else path.include?('students')
      students_mypage_path
    end
  end

  # ヘッダーのログアウトリンクを講師と生徒で切り分ける
  def get_logout_link(path)
    if path.include?('tutors')
      destroy_tutor_session_path
    else path.include?('students')
      destroy_student_session_path
    end
  end
end
