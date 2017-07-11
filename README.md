# PlugStaticIndexHtml

Serves `index.html` pages for requests to paths without a filename in Phoenix / Plug applications.

## Installation

  1. Add `plug_static_index_html` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:plug_static_index_html, "~> 0.1.0"}]
    end
    ```

## Usage

Add `Plug.Static.IndexHtml` before `Plug.Static` in `endpoint.ex`

```Elixir
plug Plug.Static.IndexHtml, at: "/docs"
plug Plug.Static, at: "/", from: :my_app
```

See docs at https://hexdocs.pm/plug_static_index_html

## License (MIT)

See LICENSE file for details
