class MinitestShopifyThemes::Tags::StylesheetTag < Liquid::Block
  def render(context)
    # Do not render anything for stylesheet tags.
    nil
  end

  Liquid::Environment.default.register_tag('stylesheet', self)
end
