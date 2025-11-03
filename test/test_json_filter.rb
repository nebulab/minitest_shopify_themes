require "minitest/autorun"
require "minitest_shopify_themes"

class TestJsonFilter < MinitestShopifyThemes::LiquidTest
  MinitestShopifyThemes.configuration.theme_root = File.join(__dir__, "theme")

  def test_converts_hash_to_json
    data = {
      id: 1,
      name: "John Doe",
      active: true
    }
    render template: "snippets/json-test", variables: { data: data }
    assert_text '{"id":1,"name":"John Doe","active":true}'
  end

  def test_converts_array_to_json
    data = ["apple", "banana", "cherry"]
    render template: "snippets/json-test", variables: { data: data }
    assert_text '["apple","banana","cherry"]'
  end

  def test_converts_nested_object_to_json
    data = {
      user: {
        id: 1,
        name: "Jane Smith"
      },
      items: ["a", "b", "c"]
    }
    render template: "snippets/json-test", variables: { data: data }
    assert_text '{"user":{"id":1,"name":"Jane Smith"},"items":["a","b","c"]}'
  end

  def test_converts_string_to_json
    data = "hello world"
    render template: "snippets/json-test", variables: { data: data }
    assert_text '"hello world"'
  end

  def test_converts_number_to_json
    data = 42
    render template: "snippets/json-test", variables: { data: data }
    assert_text '42'
  end
end
