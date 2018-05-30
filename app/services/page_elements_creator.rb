require 'nokogiri'
require 'open-uri'

class PageElementsCreator< ApplicationService
  attr_reader :page

  def initialize(page)
    @page = page
  end

  def call
    doc = Nokogiri::HTML(open(@page.url))

    process_elements(doc, page)
  end

  private

  def process_elements(doc, page)
    %w[h1 h2 h3 a].each do |tag|
      process_element_content(page, doc, tag)
    end
  end

  def process_element_content(page, doc, tag)
    doc.css(tag).each do |tag|
      page.elements.create(tag: tag.name, content: tag.content)
    end
  end
end
