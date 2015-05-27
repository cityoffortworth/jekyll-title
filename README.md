# jekyll-title

Liquid filter for fixing capitalization in Jekyll page titles.

## Usage

The `title` filter changes `THIS IS A TITLE` and `this is a title` to `This Is A Title`.

```
{{ page.title | title }}
```

See the [tests](https://github.com/cityoffortworth/jekyll-title/blob/master/test/jekyll/title_filter_test.rb) for more details.
