require "minitest/autorun"
require "minitest_shopify_themes"

class TestStyleTags < MinitestShopifyThemes::LiquidTest
  MinitestShopifyThemes.configuration.theme_root = File.join(__dir__, "theme")

  def test_renders_template_with_style_tag_ignoring_styles
    variables = {
      title: "Hello World",
      text: "This is a paragraph"
    }
    render template: "snippets/with-style-tag", variables: variables
    assert_selector "h1", text: "Hello World"
    assert_selector "p", text: "This is a paragraph"
    refute_text ".content"
    refute_text "background-color"
  end

  def test_renders_template_with_stylesheet_tag_ignoring_styles
    variables = {
      heading: "Test Heading",
      description: "Test description"
    }
    render template: "snippets/with-stylesheet-tag", variables: variables
    assert_selector "h2", text: "Test Heading"
    assert_selector "p", text: "Test description"
    refute_text "body"
    refute_text "font-family"
  end
end
