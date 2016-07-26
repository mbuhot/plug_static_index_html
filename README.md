# PlugStaticIndexHtml

Serves `index.html` pages for requests to paths without a filename in Phoenix / Plug applications.

## Installation

  1. Add `plug_static_index_html` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:plug_static_index_html, "~> 0.1.0"}]
    end
    ```

  2. Ensure `plug_static_index_html` is started before your application:

    ```elixir
    def application do
      [applications: [:plug_static_index_html]]
    end
    ```

## Usage

Add `Plug.Static.IndexHtml` before `Plug.Static` in `endpoint.ex`

```Elixir
plug Plug.Static.IndexHtml, at: "/docs"
plug Plug.Static, at: "/", from: :my_app
```

## License (MIT)

Copyright (c) 2016 Michael Buhot (m.buhot@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.