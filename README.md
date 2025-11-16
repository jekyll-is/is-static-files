| **EN** | [ru](README-ru.md) |
|----------|----------|

# is-static-files

[![GitHub License](https://img.shields.io/github/license/jekyll-is/is-static-files)](LICENSE)
[![Gem Version](https://badge.fury.io/rb/is-static-files.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/is-static-files)
[![Ruby](https://github.com/jekyll-is/is-static-files/actions/workflows/ruby.yml/badge.svg)](https://github.com/jekyll-is/is-static-files/actions/workflows/ruby.yml)
![Coverage](coverage-badge.svg)

Custom `StaticFile` descendants for Jekyll.

## Overview

`is-static-files` is a Ruby gem that extends Jekyll's static file handling capabilities by providing a custom `StaticFile` class. It allows you to manage static files that either come from a source file or from dynamic content held directly in memory. This flexibility enables programmatically generating or modifying static file content during the Jekyll build process.

## Features

- Inherits from `Jekyll::StaticFile` to seamlessly integrate with Jekyll.
- Supports files backed by an existing source file on disk.
- Supports files created from raw content data without existing source files.
- Custom destination and relative path handling.
- Compatible with Jekyll >= 4.3 and Ruby ~> 3.4.
- Comes with RSpec tests and SimpleCov coverage for easy maintenance.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem 'is-static-files', '~> 0.8.0'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install is-static-files
```

## Usage

Create instances of `IS::StaticFile` to represent static files that you want Jekyll to include in the site build.

```ruby
# From existing source file
file = IS::StaticFile.new(site, '/target/path/', 'example.txt', source: '/full/path/to/src/example.txt')

# From in-memory content with no source file
file2 = IS::StaticFile.new(site, '/target/path/', 'generated.txt', content: 'This is dynamic content.')

# Add these files to the site static files during a generator hook
site.static_files << file
site.static_files << file2
```

The `write` method ensures files are copied or written to the destination directory during site generation.

## Development and Testing

Clone the repository and run:

```shell
bundle install
rake spec
```

This will run the RSpec test suite with coverage reporting.

## License

This project is licensed under the GPL-3.0-or-later License.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jekyll-is/is-static-files.

---

Crafted for Jekyll users needing advanced static file handling with dynamic content generation.

