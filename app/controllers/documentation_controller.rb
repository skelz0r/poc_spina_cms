class DocumentationController < ApplicationController
  def index
    @pages = Spina::Resource.find_by(name: 'documentation').pages.where(active: true, draft: false) || []
  end
end
