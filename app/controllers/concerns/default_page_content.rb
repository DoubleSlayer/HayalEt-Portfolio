module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
   @page_title = "Hayalet Portfolio | My portfolio website"
   @seo_keywords = "Sinan Kılıç Portfolio"
  end
end



