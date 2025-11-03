class MinitestShopifyThemes::Tags::StyleTag < Liquid::Block
  def render(context)
    # Do not render anything for style tags.
    nil
  end

  Liquid::Environment.default.register_tag('style', self)
end
