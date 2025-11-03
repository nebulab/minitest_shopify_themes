require 'json'

module MinitestShopifyThemes::Filters::JsonFilter
  def json(input)
    JSON.generate(input)
  end

  Liquid::Environment.default.register_filter(self)
end
