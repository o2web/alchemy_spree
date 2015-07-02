
Alchemy::Page.class_eval do
  def equivalent_for_lang(language)
    return self if self.language_id == language.id
    Alchemy::Page.where(page_layout: self.try(:page_layout), language_code: language.code).take || language.pages.language_roots.first
  end
end