require "minitest/autorun"
require "minitest_shopify_themes"

class TestLiquidTest < MinitestShopifyThemes::LiquidTest
  def setup
    super
    MinitestShopifyThemes.configuration.theme_root = File.join(__dir__, "theme")
  end

  def test_stringify_keys
    render_liquid template: "snippets/deep-keys", variables: { very: {deeply: [
      { nested: { key: "nested-value" } },
      { buried: { key: "buried-value" } },
    ]} }
    assert_equal "nested-value buried-value", text
  end
end
